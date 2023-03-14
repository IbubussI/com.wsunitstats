package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.exporter.model.json.gameplay.GameplayFileModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.CreateEnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.EnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.GatherJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ProjectileJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ScenesJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.TurretJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.UnitJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.weapon.WeaponJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.work.WorkJsonModel;
import com.wsunitstats.exporter.model.json.main.MainFileModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.service.ModelMappingService;
import com.wsunitstats.exporter.service.UnitModelResolverService;
import com.wsunitstats.utils.Util;
import com.wsunitstats.exporter.model.LocalizationKeyModel;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ArmorModel;
import com.wsunitstats.domain.submodel.GatherModel;
import com.wsunitstats.exporter.model.FileModelWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.IntStream;

@Service
public class UnitModelResolverServiceImpl implements UnitModelResolverService {
    private static final String NIL = "nil";

    @Autowired
    private ModelMappingService mappingService;

    @Override
    public List<UnitModel> resolveFromJsonModel(FileModelWrapper rootContainer) {
        GameplayFileModel gameplayModel = rootContainer.getGameplayFileModel();
        MainFileModel mainModel = rootContainer.getMainFileModel();
        MainStartupFileModel startupModel = rootContainer.getMainStartupFileModel();
        SessionInitFileModel sessionInitModel = rootContainer.getSessionInitFileModel();

        LocalizationKeyModel localizationModel = mappingService.map(sessionInitModel, startupModel);

        ScenesJsonModel scenes = gameplayModel.getScenes();
        Map<Integer, UnitJsonModel> unitMap = scenes.getUnits();
        Map<Integer, EnvJsonModel> envMap = scenes.getEnvs();
        Map<Integer, ProjectileJsonModel> projectileMap = scenes.getProjectiles();

        List<UnitModel> result = new ArrayList<>();
        for (Map.Entry<Integer, UnitJsonModel> entry : unitMap.entrySet()) {
            Integer id = entry.getKey();
            UnitJsonModel unitJsonModel = entry.getValue();
            BuildJsonModel buildJsonModel = findUnitBuildObject(gameplayModel, id);
            List<AbilityJsonModel> abilities = unitJsonModel.getAbilities();
            List<WorkJsonModel> works = unitJsonModel.getWork();
            List<CreateEnvJsonModel> createEnvs = unitJsonModel.getCreateEnvs();
            List<WeaponJsonModel> weapons = unitJsonModel.getWeapons();
            List<TurretJsonModel> turrets = unitJsonModel.getTurrets();
            UnitModel unit = new UnitModel();

            // Generic traits
            unit.setGameId(id);
            unit.setName(localizationModel.getUnitNames().get(id));
            //unit.setImageUrl();
            unit.setNation(getUnitNation(sessionInitModel, localizationModel, id));

            // Build traits
            if (buildJsonModel != null) {
                unit.setInitCost(mappingService.mapResources(buildJsonModel.getCostInit(), localizationModel));
                List<Integer> fullCost = Util.add(buildJsonModel.getCostInit(), buildJsonModel.getCostBuilding());
                unit.setFullCost(mappingService.mapResources(fullCost, localizationModel));
            }

            // Unit traits
            unit.setArmor(getArmorList(unitJsonModel.getArmor()));
            unit.setSize(Util.intToDoubleShift(unitJsonModel.getSize()));
            unit.setAbilities(getAbilitiesList(abilities, works, createEnvs, envMap, localizationModel));
            unit.setWeapons(getWeaponsList(weapons, projectileMap, localizationModel));
            unit.setTurrets(getTurretList(turrets, projectileMap, localizationModel));

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

    private List<GatherModel> getGatherList(List<GatherJsonModel> gatherList, LocalizationKeyModel localizationModel) {
        return gatherList == null ? new ArrayList<>() :
                gatherList.stream()
                        .map(gatherJsonModel -> mappingService.map(gatherJsonModel, localizationModel))
                        .toList();
    }

    private List<ArmorModel> getArmorList(ArmorJsonModel armorJsonModel) {
        //Armor should not be null for every unit
        List<ArmorJsonModel.Entry> entries = armorJsonModel.getData();
        int probabilitiesSum = Util.sum(armorJsonModel.getData().stream().map(ArmorJsonModel.Entry::getProbability).toList());
        return entries.stream()
                .map(entry -> mappingService.map(entry, probabilitiesSum))
                .toList();
    }

    private String getUnitNation(SessionInitFileModel sessionInitModel, LocalizationKeyModel localizationModel, int unitId) {
        String unitNation = sessionInitModel.getUnitNations().get(unitId);
        Integer nationId = NIL.equals(unitNation) ? null : Integer.parseInt(unitNation);
        return nationId == null ? null : localizationModel.getNationNames().get(nationId);
    }

    private List<AbilityModel> getAbilitiesList(List<AbilityJsonModel> abilitiesList,
                                                List<WorkJsonModel> workList,
                                                List<CreateEnvJsonModel> createEnvs,
                                                Map<Integer, EnvJsonModel> envs,
                                                LocalizationKeyModel localizationModel) {
        return abilitiesList == null ? new ArrayList<>() :
                IntStream.range(0, abilitiesList.size())
                        .mapToObj(i -> {
                            WorkJsonModel workModel = workList.stream()
                                    .filter(work -> i == work.getAbility())
                                    .findFirst()
                                    .orElse(null);
                            return mappingService.map(abilitiesList.get(i), workModel, createEnvs, envs, localizationModel);
                        })
                        .toList();
    }

    private List<WeaponModel> getWeaponsList(List<WeaponJsonModel> weaponList,
                                             Map<Integer, ProjectileJsonModel> projectiles,
                                             LocalizationKeyModel localizationModel) {
        return weaponList == null ? new ArrayList<>() :
                weaponList.stream()
                        .map(entry -> mappingService.map(entry, projectiles, localizationModel))
                        .toList();
    }

    private List<TurretModel> getTurretList(List<TurretJsonModel> turretList,
                                            Map<Integer, ProjectileJsonModel> projectiles,
                                            LocalizationKeyModel localizationModel) {
        return turretList == null ? new ArrayList<>() :
                turretList.stream()
                        .map(entry -> mappingService.map(entry, projectiles, localizationModel))
                        .toList();
    }
}
