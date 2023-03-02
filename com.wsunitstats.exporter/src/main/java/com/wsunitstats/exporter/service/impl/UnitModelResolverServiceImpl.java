package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.exporter.model.json.gameplay.GameplayFileModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.GatherJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.UnitJsonModel;
import com.wsunitstats.exporter.model.json.main.MainFileModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.service.ObjectMappingService;
import com.wsunitstats.exporter.service.UnitModelResolverService;
import com.wsunitstats.exporter.util.Utilities;
import com.wsunitstats.model.LocalizationModel;
import com.wsunitstats.model.UnitModel;
import com.wsunitstats.model.submodel.ArmorModel;
import com.wsunitstats.model.submodel.GatherModel;
import com.wsunitstats.exporter.model.FileContainerModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class UnitModelResolverServiceImpl implements UnitModelResolverService {
    private static final String NIL = "nil";

    @Autowired
    private ObjectMappingService mappingService;

    @Override
    public List<UnitModel> resolveFromJsonModel(FileContainerModel rootContainer) {
        GameplayFileModel gameplayModel = rootContainer.getGameplayFileModel();
        MainFileModel mainModel = rootContainer.getMainFileModel();
        MainStartupFileModel startupModel = rootContainer.getMainStartupFileModel();
        SessionInitFileModel sessionInitModel = rootContainer.getSessionInitFileModel();

        LocalizationModel localizationModel = mappingService.map(sessionInitModel, startupModel);

        Map<Integer, UnitJsonModel> unitJsonMap = gameplayModel.getScenes().getUnits();
        List<UnitModel> result = new ArrayList<>();
        for (Map.Entry<Integer, UnitJsonModel> entry : unitJsonMap.entrySet()) {
            Integer id = entry.getKey();
            UnitJsonModel unitJsonModel = entry.getValue();
            BuildJsonModel buildJsonModel = findUnitBuildObject(gameplayModel, id);
            UnitModel unit = new UnitModel();

            // Generic traits
            unit.setGameId(id);
            unit.setName(localizationModel.getUnitNames().get(id));
            //unit.setImageUrl();
            unit.setNation(getUnitNation(sessionInitModel, localizationModel, id));

            // Build traits
            if (buildJsonModel != null) {
                unit.setInitCost(mappingService.map(buildJsonModel.getCostInit(), localizationModel));
                List<Integer> fullCost = Utilities.add(buildJsonModel.getCostInit(), buildJsonModel.getCostBuilding());
                unit.setFullCost(mappingService.map(fullCost, localizationModel));
            }

            // Unit traits
            unit.setArmor(getArmorList(unitJsonModel.getArmor()));
            unit.setSize(Utilities.intToDoubleShift(unitJsonModel.getSize()));

            // Movable traits
            unit.setMovement(mappingService.map(unitJsonModel.getMovement()));
            unit.setTransporting(mappingService.map(unitJsonModel.getTransporting()));

            // Worker traits
            unit.setGather(getGatherList(unitJsonModel.getGather(), localizationModel));

            result.add(unit);
        }
        return result;
    }

    private BuildJsonModel findUnitBuildObject(GameplayFileModel gameplayJsonModel, int unitId) {
        return gameplayJsonModel.getBuild().stream()
                .filter(buildJsonModel -> buildJsonModel.getUnit() == unitId)
                .findFirst()
                .orElse(null);
    }

    private List<GatherModel> getGatherList(List<GatherJsonModel> gatherList, LocalizationModel localizationModel) {
        return gatherList == null ? null :
                gatherList.stream()
                        .map(gatherJsonModel -> mappingService.map(gatherJsonModel, localizationModel))
                        .toList();
    }

    private List<ArmorModel> getArmorList(ArmorJsonModel armorJsonModel) {
        //Armor should not be null for every unit
        List<ArmorJsonModel.Entry> entries = armorJsonModel.getData();
        int probabilitiesSum = Utilities.sum(armorJsonModel.getData().stream().map(ArmorJsonModel.Entry::getProbability).toList());
        return entries.stream()
                        .map(entry -> mappingService.map(entry, probabilitiesSum))
                        .toList();
    }

    private String getUnitNation(SessionInitFileModel sessionInitModel, LocalizationModel localizationModel, int unitId) {
        String unitNation = sessionInitModel.getUnitNations().get(unitId);
        Integer nationId = NIL.equals(unitNation) ? null : Integer.parseInt(unitNation);
        return nationId == null ? null : localizationModel.getNationNames().get(nationId);
    }

}
