package com.ws.unit.stats.service.impl;

import com.ws.unit.stats.model.mapped.UnitModel;
import com.ws.unit.stats.model.raw.FileContainerModel;
import com.ws.unit.stats.model.raw.gameplay.BuildJsonModel;
import com.ws.unit.stats.model.raw.gameplay.GameplayFileModel;
import com.ws.unit.stats.model.raw.gameplay.UnitJsonModel;
import com.ws.unit.stats.model.raw.localization.LocalizationFileModel;
import com.ws.unit.stats.model.raw.main.MainFileModel;
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

        GameplayFileModel gameplayJsonModel = rootContainer.getGameplayFileJsonModel();
        LocalizationFileModel localizationJsonModel = rootContainer.getLocalizationFileJsonModel();
        MainFileModel mainFileModel = rootContainer.getMainFileJsonModel();

        Map<Integer, UnitJsonModel> unitJsonMap = gameplayJsonModel.getScenes().getUnits();
        List<UnitModel> result = new ArrayList<>();
        unitJsonMap.forEach((id, unitJsonModel) -> {
            BuildJsonModel buildJsonModel = findUnitBuildObject(gameplayJsonModel, id);
            UnitModel unit = new UnitModel();
            //unit.setArmor(mappingService.map(unitJsonModel.getArmor()));
            //unit.setGather(mappingService.map(unitJsonModel.getGather()));
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

}
