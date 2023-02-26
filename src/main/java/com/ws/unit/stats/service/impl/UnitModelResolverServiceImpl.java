package com.ws.unit.stats.service.impl;

import com.ws.unit.stats.model.mapped.UnitModel;
import com.ws.unit.stats.model.raw.RootJsonContainerModel;
import com.ws.unit.stats.model.raw.gameplay.BuildJsonModel;
import com.ws.unit.stats.model.raw.gameplay.GameplayFileJsonModel;
import com.ws.unit.stats.model.raw.gameplay.UnitJsonModel;
import com.ws.unit.stats.model.raw.localization.LocalizationFileJsonModel;
import com.ws.unit.stats.model.raw.main.MainFileJsonModel;
import com.ws.unit.stats.service.ObjectMappingService;
import com.ws.unit.stats.service.UnitModelResolverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class UnitModelResolverServiceImpl implements UnitModelResolverService {

    @Autowired
    private ObjectMappingService mappingService;

    public List<UnitModel> resolveFromJsonModel(RootJsonContainerModel rootContainer) {

        GameplayFileJsonModel gameplayJsonModel = rootContainer.getGameplayFileJsonModel();
        LocalizationFileJsonModel localizationJsonModel = rootContainer.getLocalizationFileJsonModel();
        MainFileJsonModel mainFileJsonModel = rootContainer.getMainFileJsonModel();

        Map<Integer, UnitJsonModel> unitJsonMap = gameplayJsonModel.getScenes().getUnits();
        List<UnitModel> result = new ArrayList<>();
        unitJsonMap.forEach((id, unitJsonModel) -> {
            BuildJsonModel buildJsonModel = findUnitBuildObject(gameplayJsonModel, id);
            UnitModel unit = new UnitModel();
            //unit.setArmor(mappingService.map(unitJsonModel.getArmor()));
            //unit.setGather(mappingService.map(unitJsonModel.getGather()));
            unit.setSize(mappingService.map(unitJsonModel.getSize()));
            unit.setMovement(mappingService.map(unitJsonModel.getMovement()));
            if (buildJsonModel != null) {
                unit.setInitCost(mappingService.map(buildJsonModel.getCostInit()));
            }
            unit.setTransporting(mappingService.map(unitJsonModel.getTransporting()));
            result.add(unit);
        });
        return result;
    }

    private BuildJsonModel findUnitBuildObject(GameplayFileJsonModel gameplayJsonModel, int unitId) {
        return gameplayJsonModel.getBuild().stream()
                .filter(buildJsonModel -> buildJsonModel.getUnit() == unitId)
                .findFirst()
                .orElse(null);
    }

}
