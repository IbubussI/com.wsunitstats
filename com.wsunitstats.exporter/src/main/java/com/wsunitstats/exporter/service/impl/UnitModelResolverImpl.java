package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.domain.submodel.ConstructionModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.exporter.model.GroundAttackDataWrapper;
import com.wsunitstats.exporter.model.json.gameplay.GameplayFileJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.AbilityWrapperJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.AttackJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildingJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.CreateEnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.DeathabilityJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.GatherJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.MovementJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ScenesJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.TurretJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.UnitJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityOnActionJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.air.AirplaneJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.weapon.WeaponJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.work.WorkJsonModel;
import com.wsunitstats.exporter.model.json.visual.VisualFileJsonModel;
import com.wsunitstats.exporter.model.json.visual.submodel.UnitTypeJsonModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.service.FileContentService;
import com.wsunitstats.exporter.service.ImageService;
import com.wsunitstats.exporter.service.ModelMappingService;
import com.wsunitstats.exporter.service.UnitModelResolver;
import com.wsunitstats.utils.Constants;
import com.wsunitstats.utils.Util;
import com.wsunitstats.exporter.model.LocalizationKeyModel;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ArmorModel;
import com.wsunitstats.domain.submodel.GatherModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.IntStream;

import static com.wsunitstats.utils.Constants.LIVESTOCK_LIMIT;
import static com.wsunitstats.utils.Constants.STORAGE_MULTIPLIER_DEFAULT;
import static com.wsunitstats.utils.Constants.STORAGE_MULTIPLIER_MODIFIER;

@Service
public class UnitModelResolverImpl implements UnitModelResolver {
    @Autowired
    private ModelMappingService mappingService;
    @Autowired
    private ImageService imageService;
    @Autowired
    private FileContentService fileContentService;

    @Override
    public List<UnitModel> resolve() {
        GameplayFileJsonModel gameplayModel = fileContentService.getGameplayFileModel();
        VisualFileJsonModel visualModel = fileContentService.getVisualFileModel();
        SessionInitFileModel sessionInitModel = fileContentService.getSessionInitFileModel();
        LocalizationKeyModel localizationKeyModel = fileContentService.getLocalizationKeyModel();

        ScenesJsonModel scenes = gameplayModel.getScenes();
        Map<Integer, UnitJsonModel> unitMap = scenes.getUnits();
        Map<Integer, UnitTypeJsonModel> unitTypeMap = visualModel.getUnitTypes();

        List<UnitModel> result = new ArrayList<>();
        for (Map.Entry<Integer, UnitJsonModel> entry : unitMap.entrySet()) {
            Integer id = entry.getKey();
            UnitJsonModel unitJsonModel = entry.getValue();
            UnitModel unit = new UnitModel();

            // Generic traits
            unit.setGameId(id);
            unit.setName(localizationKeyModel.getUnitNames().get(id));
            unit.setImage(imageService.getImageName(Constants.EntityType.UNIT.getName(), id));
            unit.setNation(Util.getUnitNation(sessionInitModel.getUnitNations(), localizationKeyModel.getNationNames(), id));
            unit.setDescription(localizationKeyModel.getUnitTexts().get(id));

            // Build traits
            unit.setBuild(mappingService.map(unitJsonModel, findUnitBuildObject(gameplayModel, id)));

            // Unit traits
            unit.setViewRange(Util.intToDoubleShift(unitJsonModel.getViewRange()));
            unit.setTags(mappingService.mapUnitTags(unitJsonModel.getTags()));
            unit.setSearchTags(mappingService.mapTags(unitJsonModel.getSearchTags(), i -> localizationKeyModel.getUnitSearchTagNames().get(i)));
            unit.setControllable(Util.getInvertedBoolean(unitJsonModel.getControllable()));
            unit.setParentMustIdle(unitJsonModel.getParentMustIdle());
            unit.setHeal(mappingService.map(unitJsonModel.getHeal()));
            unit.setSize(Util.intToDoubleShift(unitJsonModel.getSize()));
            Integer storageMultiplier = unitJsonModel.getStorageMultiplier();
            if (storageMultiplier == null) {
                unit.setStorageMultiplier((int) (STORAGE_MULTIPLIER_MODIFIER * STORAGE_MULTIPLIER_DEFAULT));
            } else if (storageMultiplier != 0) {
                unit.setStorageMultiplier((int) (STORAGE_MULTIPLIER_MODIFIER * storageMultiplier));
            }

            AbilityWrapperJsonModel ability = unitJsonModel.getAbility();
            if (ability != null) {
                unit.setAbilities(getAbilitiesList(ability, unitJsonModel.getCreateEnvs()));
            }

            DeathabilityJsonModel deathability = unitJsonModel.getDeathability();
            if (deathability != null) {
                unit.setArmor(getArmorList(deathability.getArmor()));
                unit.setRegenerationSpeed(Util.intToDoubleTick(deathability.getRegeneration()));
                unit.setThreat(deathability.getThreat());
                unit.setReceiveFriendlyDamage(Util.getInvertedBoolean(deathability.getReceiveFriendlyDamage()));
                unit.setLifetime(Util.intToDoubleShift(deathability.getLifeTime()));
                unit.setHealth(Util.intToDoubleShift(deathability.getHealth()));
            }

            AttackJsonModel attack = unitJsonModel.getAttack();
            String externalData = unitTypeMap.get(id).getExternalData();
            if (attack != null) {
                Integer onDeathId = attack.getWeaponUseOnDeath();
                unit.setWeapons(getWeaponsList(attack.getWeapons(), externalData, false, onDeathId));
                unit.setTurrets(getTurretList(attack.getTurrets(), externalData));
                unit.setSupply(mappingService.map(unitJsonModel.getSupply()));
                unit.setWeaponOnDeath(onDeathId);
            }

            MovementJsonModel movement = unitJsonModel.getMovement();
            if (movement != null) {
                AirplaneJsonModel airplaneAndSubmarineModel = movement.getAirplane();
                unit.setAirplane(mappingService.mapAirplane(airplaneAndSubmarineModel));
                unit.setSubmarine(mappingService.mapSubmarine(airplaneAndSubmarineModel));
                unit.setTransporting(mappingService.map(movement.getTransporting(), unitJsonModel.getTransport()));
                unit.setGather(getGatherList(movement.getGather()));
                unit.setConstruction(getConstructionList(movement.getBuilding()));
                unit.setMovement(mappingService.map(movement));
                unit.setWeight(movement.getWeight());
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

    private List<GatherModel> getGatherList(List<GatherJsonModel> gatherList) {
        return gatherList == null ? new ArrayList<>() :
                IntStream.range(0, gatherList.size())
                        .mapToObj(index -> mappingService.map(index, gatherList.get(index)))
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

    private List<AbilityModel> getAbilitiesList(AbilityWrapperJsonModel ability,
                                                List<CreateEnvJsonModel> createEnvs) {
        List<AbilityJsonModel> abilitiesList = ability.getAbilities();
        List<WorkJsonModel> workList = ability.getWork();
        AbilityOnActionJsonModel onAction = ability.getAbilityOnAction();
        return abilitiesList == null ? new ArrayList<>() :
                IntStream.range(0, abilitiesList.size())
                        .mapToObj(i -> {
                            Integer workId = null;
                            WorkJsonModel workModel = null;
                            if (workList != null) {
                                for (int j = 0; j < workList.size(); j++) {
                                    WorkJsonModel current = workList.get(j);
                                    if (i == current.getAbility()) {
                                        workId = j;
                                        workModel = current;
                                    }
                                }
                            }
                            return mappingService.map(i, abilitiesList.get(i), workModel, workId, createEnvs, onAction);
                        })
                        .toList();
    }

    private List<WeaponModel> getWeaponsList(List<WeaponJsonModel> weaponList,
                                             String attackGroundString,
                                             boolean isTurret,
                                             Integer onDeathId) {
        List<WeaponModel> result = new ArrayList<>();
        if (weaponList != null) {
            GroundAttackDataWrapper attackGroundData = mappingService.map(attackGroundString);
            result = IntStream.range(0, weaponList.size())
                    .mapToObj(index -> mappingService.map(index, weaponList.get(index), getAttackGround(attackGroundData, isTurret, index), isTurret, onDeathId))
                    .toList();
        }
        return result;
    }

    private List<TurretModel> getTurretList(List<TurretJsonModel> turretList,
                                            String attackGroundString) {
        return turretList == null ? new ArrayList<>() :
                IntStream.range(0, turretList.size())
                        .mapToObj(index -> {
                            TurretJsonModel turret = turretList.get(index);
                            return mappingService.map(index, turret, getWeaponsList(turret.getWeapons(), attackGroundString, true, null));
                        })
                        .toList();
    }

    private List<ConstructionModel> getConstructionList(List<BuildingJsonModel> buildingList) {
        return buildingList == null ? new ArrayList<>() :
                IntStream.range(0, buildingList.size())
                        .mapToObj(index -> mappingService.map(index, buildingList.get(index)))
                        .toList();
    }

    private boolean getAttackGround(GroundAttackDataWrapper attackGroundData, boolean isTurret, int weaponId) {
        boolean attackGround = false;
        if (attackGroundData.isAttackGround() && attackGroundData.getWeaponId() == weaponId) {
            // if 'current-weapon-type' corresponds 'attack-ground-weapon-type'
            if ((!isTurret && attackGroundData.getWeaponTypeDescriptor() == 0) ||
                (isTurret && attackGroundData.getWeaponTypeDescriptor() == 1)) {
                attackGround = true;
            }
        }
        return attackGround;
    }
}
