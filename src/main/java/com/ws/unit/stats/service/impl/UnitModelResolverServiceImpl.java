package com.ws.unit.stats.service.impl;

import com.ws.unit.stats.model.mapped.LocalizationModel;
import com.ws.unit.stats.model.mapped.UnitModel;
import com.ws.unit.stats.model.mapped.submodel.ArmorModel;
import com.ws.unit.stats.model.mapped.submodel.GatherModel;
import com.ws.unit.stats.model.mapped.submodel.ResourceModel;
import com.ws.unit.stats.model.raw.FileContainerModel;
import com.ws.unit.stats.model.raw.json.gameplay.submodel.ArmorJsonModel;
import com.ws.unit.stats.model.raw.json.gameplay.submodel.BuildJsonModel;
import com.ws.unit.stats.model.raw.json.gameplay.GameplayFileModel;
import com.ws.unit.stats.model.raw.json.gameplay.submodel.GatherJsonModel;
import com.ws.unit.stats.model.raw.json.gameplay.submodel.UnitJsonModel;
import com.ws.unit.stats.model.raw.json.main.MainFileModel;
import com.ws.unit.stats.model.raw.lua.MainStartupFileModel;
import com.ws.unit.stats.model.raw.lua.SessionInitFileModel;
import com.ws.unit.stats.service.ObjectMappingService;
import com.ws.unit.stats.service.UnitModelResolverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static com.ws.unit.stats.util.Utilities.intToDoubleShift;

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
                ResourceModel initCost = mappingService.map(buildJsonModel.getCostInit(), localizationModel);
                ResourceModel buildCost = mappingService.map(buildJsonModel.getCostBuilding(), localizationModel);
                unit.setInitCost(initCost);
                unit.setFullCost(buildCost.add(initCost));
            }

            // Unit traits
            unit.setArmor(getArmorList(unitJsonModel.getArmor()));
            unit.setSize(intToDoubleShift(unitJsonModel.getSize()));

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
        return armorJsonModel.getData() == null ? null :
                armorJsonModel.getData().stream()
                        .map(entry -> mappingService.map(entry))
                        .toList();
    }

    private String getUnitNation(SessionInitFileModel sessionInitModel, LocalizationModel localizationModel, int unitId) {
        String unitNation = sessionInitModel.getUnitNations().get(unitId);
        Integer nationId = NIL.equals(unitNation) ? null : Integer.parseInt(unitNation);
        return nationId == null ? null : localizationModel.getNationNames().get(nationId);
    }

}
