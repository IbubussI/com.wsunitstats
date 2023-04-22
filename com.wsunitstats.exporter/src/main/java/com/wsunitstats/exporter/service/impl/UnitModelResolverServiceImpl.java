package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.domain.submodel.ConstructionModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.exporter.model.json.gameplay.GameplayFileJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.AbilityWrapperJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.AttackJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildingJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.CreateEnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.DeathabilityJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.EnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.GatherJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.MovementJsonModel;
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
import com.wsunitstats.exporter.service.ImageService;
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
    @Autowired
    private ImageService imageService;

    @Override
    public List<UnitModel> resolveFromJsonModel(SourceModelWrapper rootContainer) {
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
            unit.setImage(imageService.getImageName("unit", id));
            unit.setNation(getUnitNation(sessionInitModel, localizationModel, id));

            // Build traits
            unit.setBuild(mappingService.map(unitJsonModel, findUnitBuildObject(gameplayModel, id), localizationModel));

            // Unit traits
            unit.setViewRange(Util.intToDoubleShift(unitJsonModel.getViewRange()));
            unit.setTags(mappingService.mapUnitTags(unitJsonModel.getTags(), localizationModel));
            unit.setSearchTags(mappingService.mapTags(unitJsonModel.getSearchTags(), i -> localizationModel.getUnitSearchTagNames().get(i)));
            unit.setControllable(unitJsonModel.getControllable());
            unit.setParentMustIdle(unitJsonModel.getParentMustIdle());
            unit.setHeal(mappingService.map(unitJsonModel.getHeal(), localizationModel));
            unit.setSize(Util.intToDoubleShift(unitJsonModel.getSize()));

            AbilityWrapperJsonModel ability = unitJsonModel.getAbility();
            if (ability != null) {
                unit.setAbilities(getAbilitiesList(ability,
                        unitJsonModel.getCreateEnvs(),
                        envMap,
                        localizationModel));
            }

            DeathabilityJsonModel deathability = unitJsonModel.getDeathability();
            if (deathability != null) {
                unit.setArmor(getArmorList(deathability.getArmor()));
                unit.setRegenerationSpeed(Util.intToDoubleTick(deathability.getRegeneration()));
                unit.setThreat(deathability.getThreat());
                unit.setReceiveFriendlyDamage(deathability.getReceiveFriendlyDamage());
                unit.setLifetime(Util.intToDoubleShift(deathability.getLifeTime()));
                unit.setHealth(Util.intToDoubleShift(deathability.getHealth()));
            }

            AttackJsonModel attack = unitJsonModel.getAttack();
            if (attack != null) {
                unit.setWeapons(getWeaponsList(attack.getWeapons(), projectileMap, localizationModel));
                unit.setTurrets(getTurretList(attack.getTurrets(), projectileMap, localizationModel));
                unit.setSupply(mappingService.map(unitJsonModel.getSupply()));
                unit.setWeaponOnDeath(attack.getWeaponUseOnDeath());
            }

            MovementJsonModel movement = unitJsonModel.getMovement();
            if (movement != null) {
                AirplaneJsonModel airplaneAndSubmarineModel = movement.getAirplane();
                unit.setAirplane(mappingService.mapAirplane(airplaneAndSubmarineModel, localizationModel));
                unit.setSubmarine(mappingService.mapSubmarine(airplaneAndSubmarineModel));
                unit.setTransporting(mappingService.map(movement.getTransporting(), unitJsonModel.getTransport()));
                unit.setGather(getGatherList(movement.getGather(), localizationModel));
                unit.setConstruction(getConstructionList(movement.getBuilding()));
                unit.setMovement(mappingService.map(movement));
            } else {
                unit.setTransporting(mappingService.map(null, unitJsonModel.getTransport()));
            }

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

    private List<AbilityModel> getAbilitiesList(AbilityWrapperJsonModel ability,
                                                List<CreateEnvJsonModel> createEnvs,
                                                Map<Integer, EnvJsonModel> envs,
                                                LocalizationKeyModel localizationModel) {
        List<AbilityJsonModel> abilitiesList = ability.getAbilities();
        List<WorkJsonModel> workList = ability.getWork();
        AbilityOnActionJsonModel onAction = ability.getAbilityOnAction();
        return abilitiesList == null ? new ArrayList<>() :
                IntStream.range(0, abilitiesList.size())
                        .mapToObj(i -> {
                            if (workList == null) {
                                return mappingService.map(i, abilitiesList.get(i), null, createEnvs, onAction, envs, localizationModel);
                            }
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
