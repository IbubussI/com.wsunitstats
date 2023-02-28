package com.ws.unit.stats.service.impl;

import com.ws.unit.stats.model.mapped.LocalizationModel;
import com.ws.unit.stats.model.mapped.UnitModel;
import com.ws.unit.stats.model.mapped.submodel.ArmorModel;
import com.ws.unit.stats.model.mapped.submodel.GatherModel;
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

    @Autowired
    private ObjectMappingService mappingService;

    public List<UnitModel> resolveFromJsonModel(FileContainerModel rootContainer) {
        GameplayFileModel gameplayModel = rootContainer.getGameplayFileModel();
        MainFileModel mainModel = rootContainer.getMainFileModel();
        MainStartupFileModel startupModel = rootContainer.getMainStartupFileModel();
        SessionInitFileModel sessionInitModel = rootContainer.getSessionInitFileModel();

        LocalizationModel localizationModel = mappingService.map(sessionInitModel, startupModel);

        Map<Integer, UnitJsonModel> unitJsonMap = gameplayModel.getScenes().getUnits();
        List<UnitModel> result = new ArrayList<>();
        unitJsonMap.forEach((id, unitJsonModel) -> {
            BuildJsonModel buildJsonModel = findUnitBuildObject(gameplayModel, id);
            UnitModel unit = new UnitModel();
            unit.setArmor(getArmorList(unitJsonModel.getArmor()));
            unit.setGather(getGatherList(unitJsonModel.getGather(), localizationModel));
            unit.setSize(intToDoubleShift(unitJsonModel.getSize()));
            unit.setMovement(mappingService.map(unitJsonModel.getMovement()));
            if (buildJsonModel != null) {
                unit.setInitCost(mappingService.map(buildJsonModel.getCostInit()));
            }
            unit.setTransporting(mappingService.map(unitJsonModel.getTransporting()));
            result.add(unit);
        });
        return result;
    }

    private BuildJsonModel findUnitBuildObject(GameplayFileModel gameplayJsonModel, int unitId) {
        return gameplayJsonModel.getBuild().stream()
                .filter(buildJsonModel -> buildJsonModel.getUnit() == unitId)
                .findFirst()
                .orElse(null);
    }

    private List<GatherModel> getGatherList(List<GatherJsonModel> gatherList, LocalizationModel localization) {
        return gatherList == null ? null :
                gatherList.stream()
                        .map(gatherJsonModel -> mappingService.map(gatherJsonModel, localization))
                        .toList();
    }

    private List<ArmorModel> getArmorList(ArmorJsonModel armorJsonModel) {
        //Armor should not be null for every unit
        return armorJsonModel.getData() == null ? null :
                armorJsonModel.getData().stream()
                        .map(entry -> mappingService.map(entry))
                        .toList();
    }
}
