package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.domain.submodel.ConstructionModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.exporter.model.json.gameplay.GameplayFileJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildingJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.CreateEnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.EnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.GatherJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ProjectileJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ScenesJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.TurretJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.UnitJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityOnActionJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.air.AirplaneJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.weapon.WeaponJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.work.WorkJsonModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.service.ModelMappingService;
import com.wsunitstats.exporter.service.UnitModelResolverService;
import com.wsunitstats.utils.Constants;
import com.wsunitstats.utils.Util;
import com.wsunitstats.exporter.model.LocalizationKeyModel;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ArmorModel;
import com.wsunitstats.domain.submodel.GatherModel;
import com.wsunitstats.exporter.model.SourceModelWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.IntStream;

import static com.wsunitstats.utils.Constants.LIVESTOCK_LIMIT;

@Service
public class UnitModelResolverServiceImpl implements UnitModelResolverService {
    private static final String NIL = "nil";

    @Autowired
    private ModelMappingService mappingService;

    @Override
    public List<UnitModel> resolveFromJsonModel(SourceModelWrapper rootContainer, String imagePathTemplate) {
        GameplayFileJsonModel gameplayModel = rootContainer.getGameplayFileModel();
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
            UnitModel unit = new UnitModel();

            // Generic traits
            unit.setGameId(id);
            unit.setName(localizationModel.getUnitNames().get(id));
            unit.setImagePath(String.format(imagePathTemplate, id));
            unit.setNation(getUnitNation(sessionInitModel, localizationModel, id));

            // Build traits
            unit.setBuild(mappingService.map(unitJsonModel, findUnitBuildObject(gameplayModel, id), localizationModel));

            // Unit traits
            unit.setArmor(getArmorList(unitJsonModel.getArmor()));
            unit.setSize(Util.intToDoubleShift(unitJsonModel.getSize()));
            unit.setAbilities(getAbilitiesList(unitJsonModel.getAbilities(),
                    unitJsonModel.getWork(),
                    unitJsonModel.getCreateEnvs(),
                    unitJsonModel.getAbilityOnAction(),
                    envMap,
                    localizationModel));
            unit.setWeapons(getWeaponsList(unitJsonModel.getWeapons(), projectileMap, localizationModel));
            unit.setTurrets(getTurretList(unitJsonModel.getTurrets(), projectileMap, localizationModel));
            unit.setSupply(mappingService.map(unitJsonModel.getSupply()));
            unit.setRegenerationSpeed(Util.intToDoubleTick(unitJsonModel.getRegeneration()));
            unit.setViewRange(Util.intToDoubleShift(unitJsonModel.getViewRange()));
            unit.setHealth(Util.intToDoubleShift(unitJsonModel.getHealth()));
            unit.setTags(mappingService.mapUnitTags(unitJsonModel.getTags(), localizationModel));
            unit.setSearchTags(mappingService.mapTags(unitJsonModel.getSearchTags(), i -> localizationModel.getUnitSearchTagNames().get(i)));
            unit.setWeaponOnDeath(unitJsonModel.getWeaponUseOnDeath());
            unit.setControllable(unitJsonModel.getControllable());
            unit.setLifetime(Util.intToDoubleShift(unitJsonModel.getLifeTime()));
            unit.setParentMustIdle(unitJsonModel.getParentMustIdle());
            unit.setReceiveFriendlyDamage(unitJsonModel.getReceiveFriendlyDamage());
            unit.setThreat(unitJsonModel.getThreat());

            // Movable traits
            unit.setMovement(mappingService.map(unitJsonModel.getMovement()));
            unit.setTransporting(mappingService.map(unitJsonModel.getTransporting()));

            // Worker traits
            unit.setGather(getGatherList(unitJsonModel.getGather(), localizationModel));
            unit.setHeal(mappingService.map(unitJsonModel.getHeal(), localizationModel));
            unit.setConstruction(getConstructionList(unitJsonModel.getBuilding()));

            AirplaneJsonModel airplaneAndSubmarineModel = unitJsonModel.getAirplane();
            // Airplane traits
            unit.setAirplane(mappingService.mapAirplane(airplaneAndSubmarineModel, localizationModel));
            // Submarine traits
            unit.setSubmarine(mappingService.mapSubmarine(airplaneAndSubmarineModel));

            if (Constants.LIVESTOCK_IDS.contains(id)) {
                unit.setLimit(LIVESTOCK_LIMIT);
            }
            result.add(unit);
        }
        return result;
    }

    private BuildJsonModel findUnitBuildObject(GameplayFileJsonModel gameplayJsonModel, int unitId) {
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
                                                AbilityOnActionJsonModel onAction,
                                                Map<Integer, EnvJsonModel> envs,
                                                LocalizationKeyModel localizationModel) {
        return abilitiesList == null ? new ArrayList<>() :
                IntStream.range(0, abilitiesList.size())
                        .mapToObj(i -> {
                            WorkJsonModel workModel = workList.stream()
                                    .filter(work -> i == work.getAbility())
                                    .findFirst()
                                    .orElse(null);
                            return mappingService.map(i, abilitiesList.get(i), workModel, createEnvs, onAction, envs, localizationModel);
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

    private List<ConstructionModel> getConstructionList(List<BuildingJsonModel> buildingList) {
        return buildingList == null ? new ArrayList<>() :
                buildingList.stream()
                        .map(mappingService::map)
                        .toList();
    }
}
