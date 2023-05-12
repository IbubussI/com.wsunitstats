package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.domain.EntityInfoModel;
import com.wsunitstats.domain.submodel.AirplaneModel;
import com.wsunitstats.domain.submodel.BuildingModel;
import com.wsunitstats.domain.submodel.ConstructionModel;
import com.wsunitstats.domain.submodel.EnvTag;
import com.wsunitstats.domain.submodel.HealModel;
import com.wsunitstats.domain.submodel.IncomeModel;
import com.wsunitstats.domain.submodel.ReserveModel;
import com.wsunitstats.domain.submodel.SubmarineDepthModel;
import com.wsunitstats.domain.submodel.SupplyModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;
import com.wsunitstats.domain.submodel.ability.OnActionModel;
import com.wsunitstats.domain.submodel.requirement.RequirementsModel;
import com.wsunitstats.domain.submodel.requirement.ResearchRequirementModel;
import com.wsunitstats.domain.submodel.requirement.UnitRequirementModel;
import com.wsunitstats.domain.submodel.weapon.BuffModel;
import com.wsunitstats.domain.submodel.weapon.DamageModel;
import com.wsunitstats.domain.submodel.DistanceModel;
import com.wsunitstats.domain.submodel.weapon.ProjectileModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.exporter.model.AbilityEntityInfoWrapper;
import com.wsunitstats.exporter.model.GroundAttackDataWrapper;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildingJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.CreateEnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.DeathabilityJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.EnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.GatherJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.HealJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.IncomeJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.MovementJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ProjectileJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.SupplyJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.TransportingJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.TurretJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.UnitJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityDataJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityOnActionJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.air.AerodromeJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.air.AirplaneJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.requirement.RequirementsJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.requirement.UnitRequirementJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.weapon.BuffJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.weapon.DamageJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.weapon.DirectionAttacksPointJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.weapon.DistanceJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.weapon.WeaponJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.TransportJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.work.WorkJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.work.WorkReserveJsonModel;
import com.wsunitstats.exporter.service.FileContentService;
import com.wsunitstats.exporter.service.ImageService;
import com.wsunitstats.exporter.service.ModelMappingService;
import com.wsunitstats.utils.Constants;
import com.wsunitstats.utils.Util;
import com.wsunitstats.exporter.model.LocalizationKeyModel;
import com.wsunitstats.domain.submodel.ArmorModel;
import com.wsunitstats.domain.submodel.GatherModel;
import com.wsunitstats.domain.submodel.MovementModel;
import com.wsunitstats.domain.submodel.ResourceModel;
import com.wsunitstats.domain.submodel.TransportingModel;
import com.wsunitstats.utils.Constants.AbilityType;
import jakarta.annotation.PostConstruct;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.IntFunction;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.IntStream;

import static org.apache.commons.collections4.ListUtils.emptyIfNull;

@Service
public class ModelMappingServiceImpl implements ModelMappingService {
    private static final Logger LOG = LoggerFactory.getLogger(ModelMappingServiceImpl.class);

    private static final Pattern ATTACK_GROUND_PATTERN = Pattern.compile("\\{\"groundAttack\":\\[([0-9]+),([0-9]+)]}");
    private static final int PROBABILITY_MAX = 100;

    @Autowired
    private ImageService imageService;
    @Autowired
    private FileContentService fileContentService;

    private LocalizationKeyModel localization;
    private Map<Integer, EnvJsonModel> envMap;
    private Map<Integer, ProjectileJsonModel> projectileMap;
    private List<String> unitNations;

    @PostConstruct
    protected void postConstruct() {
        localization = fileContentService.getLocalizationKeyModel();
        envMap = fileContentService.getGameplayFileModel().getScenes().getEnvs();
        projectileMap = fileContentService.getGameplayFileModel().getScenes().getProjectiles();
        unitNations = fileContentService.getSessionInitFileModel().getUnitNations();
    }

    @Override
    public ArmorModel map(ArmorJsonModel.Entry source, int probabilitiesSum) {
        if (source == null) {
            return null;
        }
        ArmorModel armorModel = new ArmorModel();
        armorModel.setValue(Util.intToDoubleShift(source.getObject()));
        Optional.ofNullable(source.getProbability()).ifPresentOrElse(
                armorModel::setProbability,
                () -> {
                    if (probabilitiesSum == 0) {
                        armorModel.setProbability(PROBABILITY_MAX);
                    } else {
                        armorModel.setProbability(PROBABILITY_MAX - probabilitiesSum);
                    }
                }
        );
        return armorModel;
    }

    @Override
    public GatherModel map(int index, GatherJsonModel source) {
        if (source == null) {
            return null;
        }
        GatherModel gatherModel = new GatherModel();
        gatherModel.setGatherId(index);
        gatherModel.setAngle(Util.intToDoubleShift(source.getAngle()));
        gatherModel.setBagSize(Util.intToDoubleShift(source.getBagsize()));
        Double gatherDistance = Util.intToDoubleShift(source.getGatherdistance());
        gatherModel.setGatherDistance(gatherDistance != null ? gatherDistance : 0);
        gatherModel.setPerSecond(Util.intToDoubleTick(source.getPertick()));
        Integer findTargetDistance = source.getFindtargetdistance();
        gatherModel.setFindTargetDistance(findTargetDistance != null ? Util.intToDoubleShift(findTargetDistance) : Constants.DEFAULT_GATHER_FIND_TARGET_DISTANCE);
        // present only in game, probably hardcoded in the engine
        gatherModel.setFindStorageDistance(Constants.DEFAULT_GATHER_FIND_STORAGE_DISTANCE);
        gatherModel.setPutDistance(Util.intToDoubleShift(source.getPutdistance()));
        gatherModel.setEnvTags(mapEnvTags(source.getEnvtags()));
        gatherModel.setStorageTags(mapTags(source.getStoragetags(), i -> localization.getUnitSearchTagNames().get(i)));
        gatherModel.setUnitTags(mapTags(source.getUnitTags(), i -> localization.getUnitSearchTagNames().get(i)));
        gatherModel.setResource(mapResource(source.getResource(), null));
        return gatherModel;
    }

    @Override
    public List<ResourceModel> mapResources(List<Integer> source) {
        List<ResourceModel> resources = new ArrayList<>();
        if (source != null && !source.isEmpty()) {
            for (int i = 0; i < Constants.ACTIVE_RESOURCES; ++i) {
                resources.add(mapResource(i, Util.intToDoubleShift(source.get(i)).intValue()));
            }
        }
        return resources;
    }

    @Override
    public ResourceModel mapResource(Integer resourceId, Integer resourceValue) {
        ResourceModel resource = new ResourceModel();
        resource.setResourceId(resourceId);
        resource.setResourceName(localization.getResourceNames().get(resourceId));
        resource.setValue(resourceValue);
        resource.setImage(imageService.getImageName(Constants.EntityType.RESOURCE.getName(), resourceId));
        return resource;
    }

    @Override
    public TransportingModel map(TransportingJsonModel transportingSource, TransportJsonModel transportSource) {
        if (transportingSource == null && transportSource == null) {
            return null;
        }
        TransportingModel transportingModel = new TransportingModel();
        if (transportSource != null) {
            transportingModel.setCarrySize(transportSource.getVolume());
            transportingModel.setOnlyInfantry(transportSource.getUnitLimit() != null ? true : null);
        }
        if (transportingSource != null) {
            transportingModel.setOwnSize(transportingSource.getOwnVolume());
        }
        return transportingModel;
    }

    @Override
    public MovementModel map(MovementJsonModel source) {
        if (source == null) {
            return null;
        }
        MovementModel movementModel = new MovementModel();
        movementModel.setSpeed(source.getSpeed());
        movementModel.setRotationSpeed(Util.intToDoubleShift(source.getRotationSpeed()));
        return movementModel;
    }

    @Override
    public AbilityModel map(int abilityIndex,
                            AbilityJsonModel abilitySource,
                            WorkJsonModel workSource,
                            List<CreateEnvJsonModel> createEnvSource,
                            AbilityOnActionJsonModel onActionSource) {
        if (abilitySource == null) {
            return null;
        }
        AbilityModel abilityModel = new AbilityModel();
        AbilityType abilityType = getAbilityType(abilitySource);
        AbilityDataJsonModel abilityData = abilitySource.getData();
        AbilityEntityInfoWrapper entityInfo = getAbilityEntityInfo(abilityData, createEnvSource);
        Integer entityId = entityInfo.getEntityId();
        if (entityId != null) {
            abilityModel.setEntityInfo(map(entityInfo, abilityType));
            abilityModel.setCount(getEnvCount(abilityData, abilityType, entityInfo.getCreateEnvId(), createEnvSource));
        }
        abilityModel.setAbilityType(abilityType.getType());
        abilityModel.setAbilityName(abilityType.getName());
        abilityModel.setAbilityId(abilityIndex);
        abilityModel.setCost(getWorkCost(workSource));
        abilityModel.setLifeTime(Util.intToDoubleShift(abilityData.getLifeTime()));
        abilityModel.setMakeTime(workSource != null ? Util.intToDoubleShift(workSource.getMaketime()) : null);
        abilityModel.setReserve(workSource != null ? map(workSource.getReserve()) : null);
        abilityModel.setDuration(Util.intToDoubleShift(abilityData.getDuration()));
        abilityModel.setRequirements(map(abilitySource.getRequirements()));
        Boolean enabled = workSource == null ? null : workSource.getEnabled();
        if (onActionSource != null && abilityIndex == onActionSource.getAbility()) {
            abilityModel.setOnAction(map(onActionSource));
            if (enabled == null) {
                enabled = onActionSource.getEnabled();
            }
        }
        abilityModel.setEnabled(enabled != null ? enabled : true);
        return abilityModel;
    }

    @Override
    public EntityInfoModel map(AbilityEntityInfoWrapper entityInfo, AbilityType abilityType) {
        EntityInfoModel entityInfoModel = new EntityInfoModel();
        String entityType = entityInfo.getEntityType();
        int entityId = entityInfo.getEntityId();
        entityInfoModel.setEntityImage(imageService.getImageName(entityType, entityId));
        entityInfoModel.setEntityName(getAbilityEntityName(abilityType, entityId));
        if (Constants.EntityType.UNIT.getName().equals(entityType)) {
            entityInfoModel.setEntityNation(Util.getUnitNation(unitNations, localization.getNationNames(), entityId));
        }
        entityInfoModel.setEntityId(entityId);
        return entityInfoModel;
    }

    @Override
    public ReserveModel map(WorkReserveJsonModel reserveSource) {
        if (reserveSource == null) {
            return null;
        }
        ReserveModel reserveModel = new ReserveModel();
        reserveModel.setReserveLimit(reserveSource.getLimit());
        reserveModel.setReserveTime(Util.intToDoubleShift(reserveSource.getTime()));
        return reserveModel;
    }

    @Override
    public RequirementsModel map(RequirementsJsonModel requirementsSource) {
        if (requirementsSource == null) {
            return null;
        }
        RequirementsModel requirementsModel = new RequirementsModel();
        List<Integer> researches = requirementsSource.getResearches();
        List<ResearchRequirementModel> researchRequirementModels = emptyIfNull(researches)
                .stream()
                .map(researchId -> {
                    ResearchRequirementModel result = new ResearchRequirementModel();
                    result.setResearchId(researchId);
                    result.setResearchImage(imageService.getImageName(Constants.EntityType.UPGRADE.getName(), researchId));
                    result.setResearchName(localization.getResearchNames().get(researchId));
                    return result;
                })
                .toList();
        List<UnitRequirementJsonModel> units = requirementsSource.getUnits();
        List<UnitRequirementModel> unitRequirementModels = emptyIfNull(units)
                .stream()
                .map(unitJson -> {
                    UnitRequirementModel result = new UnitRequirementModel();
                    int unitId = unitJson.getType();
                    result.setQuantity(Util.getQuantityString(unitJson.getMin(), unitJson.getMax()));
                    result.setUnitImage(imageService.getImageName(Constants.EntityType.UNIT.getName(), unitId));
                    result.setUnitId(unitId);
                    result.setUnitName(localization.getUnitNames().get(unitId));
                    result.setUnitNation(Util.getUnitNation(unitNations, localization.getNationNames(), unitId));
                    return result;
                })
                .toList();
        requirementsModel.setResearches(researchRequirementModels);
        requirementsModel.setUnits(unitRequirementModels);
        requirementsModel.setResearchesAll(Util.getDirectBoolean(requirementsSource.getResearchesAll()));
        requirementsModel.setUnitsAll(Util.getInvertedBoolean(requirementsSource.getUnitsAll()));
        return requirementsModel;
    }

    @Override
    public OnActionModel map(AbilityOnActionJsonModel onActionSource) {
        OnActionModel onActionModel = new OnActionModel();
        onActionModel.setDistance(map(onActionSource.getDistance()));
        onActionModel.setOnAgro(onActionSource.getOnAgro());
        onActionModel.setRechargeTime(Util.intToDoubleShift(onActionSource.getRestore()));
        return onActionModel;
    }

    @Override
    public WeaponModel map(int weaponId,
                           WeaponJsonModel weaponSource,
                           Boolean attackGround,
                           boolean isTurret) {
        if (weaponSource == null) {
            return null;
        }
        WeaponModel weaponModel = new WeaponModel();
        weaponModel.setWeaponId(weaponId);
        weaponModel.setAttackGround(attackGround);
        weaponModel.setAutoAttack(weaponSource.getAutoAttack());
        weaponModel.setDistance(map(weaponSource.getDistance()));
        weaponModel.setEnabled(weaponSource.getEnabled());
        Integer projectileId = weaponSource.getProjectile();
        weaponModel.setProjectile(projectileId == null ? null : map(projectileId, projectileMap.get(projectileId)));
        weaponModel.setRechargePeriod(Util.intToDoubleShift(weaponSource.getRechargePeriod()));
        weaponModel.setSpread(Util.intToPercent(weaponSource.getSpread()));
        List<DirectionAttacksPointJsonModel> points = weaponSource.getDirectionAttacks().getDefaultValue().getPoints();
        Integer startTime = points.get(0).getTime();
        Integer endTime = points.get(points.size() - 1).getTime();
        // size should be always > 1
        int attacksPerAction = weaponSource.getDirectionAttacks().getDefaultValue().getPoints().size();
        weaponModel.setAttackDelay(Util.intToDoubleShift(startTime));
        weaponModel.setAttackTime(Util.intToDoubleShift(endTime));
        weaponModel.setAvgShotTime(Util.doubleToDoubleShift(getAvgShotTime(points)));
        weaponModel.setAttacksPerAction(attacksPerAction);
        weaponModel.setAttacksPerAttack(getMultipliable(weaponSource.getAttackscount()));
        weaponModel.setCharges(weaponSource.getCharges());

        DamageJsonModel damageSource = weaponSource.getDamage();
        weaponModel.setAreaType(Constants.DamageAreaType.get(damageSource.getArea()).getName());
        weaponModel.setAngle(Util.intToDoubleShift(damageSource.getAngle()));
        weaponModel.setBuff(map(damageSource.getBuff()));
        weaponModel.setDamageFriendly(damageSource.getDamageFriendly());
        weaponModel.setDamages(mapDamages(damageSource.getDamages()));
        weaponModel.setDamagesCount(getMultipliable(damageSource.getDamagesCount()));
        weaponModel.setEnvDamage(Util.intToDoubleShift(damageSource.getEnvDamage()));
        weaponModel.setEnvsAffected(mapTags(damageSource.getEnvsAffected(), i -> localization.getEnvSearchTagNames().get(i)));
        weaponModel.setRadius(Util.intToDoubleShift(damageSource.getRadius()));

        weaponModel.setWeaponType(getWeaponType(isTurret, weaponModel));
        return weaponModel;
    }

    @Override
    public List<DamageModel> mapDamages(List<List<Integer>> damagesSource) {
        List<DamageModel> damages = new ArrayList<>();
        for (List<Integer> damageList : damagesSource) {
            int unitTag = damageList.get(0);
            int value = damageList.get(1);

            DamageModel damage = new DamageModel();
            damage.setType(unitTag == 0 ? Constants.BASIC_DAMAGE_TYPE : localization.getUnitTagNames().get(unitTag - 1));
            damage.setValue(Util.intToDoubleShift(value));
            damages.add(damage);
        }
        return damages;
    }

    @Override
    public DistanceModel map(DistanceJsonModel distanceSource) {
        if (distanceSource == null) {
            return null;
        }
        DistanceModel distanceModel = new DistanceModel();
        distanceModel.setMax(Util.intToDoubleShift(distanceSource.getMax()));
        distanceModel.setMin(Util.intToDoubleShift(distanceSource.getMin()));
        distanceModel.setStop(Util.intToDoubleShift(distanceSource.getStop()));
        return distanceModel;
    }

    @Override
    public ProjectileModel map(int id, ProjectileJsonModel projectileSource) {
        if (projectileSource == null) {
            return null;
        }
        ProjectileModel projectileModel = new ProjectileModel();
        projectileModel.setGameId(id);
        projectileModel.setSpeed(Util.intToDoubleSpeed(projectileSource.getSpeed()));
        projectileModel.setTimeToStartCollision(Util.intToDoubleShift(projectileSource.getCollisionTimeToStart()));
        return projectileModel;
    }

    @Override
    public BuffModel map(BuffJsonModel buffSource) {
        if (buffSource == null) {
            return null;
        }
        BuffModel buffModel = new BuffModel();
        buffModel.setBuffId(buffSource.getResearch());
        buffModel.setName(localization.getResearchNames().get(buffSource.getResearch()));
        buffModel.setPeriod(Util.intToDoubleShift(buffSource.getPeriod()));
        buffModel.setAffectedUnits(mapUnitTags(buffSource.getTargetsTags()));
        return buffModel;
    }

    @Override
    public TurretModel map(int turretId, TurretJsonModel turretSource, List<WeaponModel> turretWeapons) {
        if (turretSource == null) {
            return null;
        }
        TurretModel turretModel = new TurretModel();
        turretModel.setTurretId(turretId);
        turretModel.setRotationSpeed(Util.intToDoubleShift(turretSource.getRotationSpeed()));
        turretModel.setWeapons(turretWeapons);
        return turretModel;
    }

    @Override
    public SupplyModel map(SupplyJsonModel supplySource) {
        if (supplySource == null) {
            return null;
        }
        Integer cost = null;
        Integer take = null;
        List<Integer> costList = supplySource.getCostList();
        List<Integer> takeList = supplySource.getTakesList();
        if (costList != null && costList.size() > 0) {
            cost = supplySource.getCostList().get(0);
        }
        if (takeList != null && takeList.size() > 0) {
            take = supplySource.getTakesList().get(0);
        }
        SupplyModel supplyModel = new SupplyModel();
        supplyModel.setConsume(Util.intToSupply(cost));
        supplyModel.setProduce(Util.intToSupply(take));
        return supplyModel;
    }

    @Override
    public BuildingModel map(UnitJsonModel unitSource, BuildJsonModel buildSource) {
        DeathabilityJsonModel deathability = unitSource.getDeathability();
        IncomeJsonModel income = unitSource.getIncome();
        if (buildSource == null && (deathability == null || deathability.getHealMeCost() == null) && income == null) {
            return null;
        }
        BuildingModel buildingModel = new BuildingModel();
        if (deathability != null) {
            buildingModel.setHealCost(mapResources(deathability.getHealMeCost()));
            if (buildSource != null) {
                buildingModel.setInitHealth(getInitHealth(deathability.getHealth(), buildSource.getHealth()));
            }
        }
        if (buildSource != null) {
            buildingModel.setRequirements(map(buildSource.getRequirements()));
            buildingModel.setInitCost(mapResources(buildSource.getCostInit()));
            List<Integer> fullCost = Util.add(buildSource.getCostInit(), buildSource.getCostBuilding());
            buildingModel.setFullCost(mapResources(fullCost));
        }
        if (income != null) {
            buildingModel.setIncome(map(income));
        }
        return buildingModel;
    }

    @Override
    public IncomeModel map(IncomeJsonModel incomeSource) {
        if (incomeSource == null) {
            return null;
        }
        IncomeModel incomeModel = new IncomeModel();
        incomeModel.setValue(mapResources(incomeSource.getValue()));
        incomeModel.setPeriod(Util.intToDoubleShift(incomeSource.getPeriod()));
        return incomeModel;
    }

    @Override
    public AirplaneModel mapAirplane(AirplaneJsonModel airplaneSource) {
        // check if airplane model does not belong to submarine
        if (airplaneSource == null || airplaneSource.getHeightAboveSurface() <= 1) {
            return null;
        }
        AirplaneModel airplaneModel = new AirplaneModel();
        airplaneModel.setFlyTime(Util.intToDoubleShift(airplaneSource.getFuel()));
        airplaneModel.setKamikaze(airplaneSource.getMoveAsFallDown());
        airplaneModel.setFlyHeight(Util.intToDoubleShift(airplaneSource.getHeightAboveSurface()));
        airplaneModel.setAscensionSpeed(airplaneSource.getAscensionalRate());
        AerodromeJsonModel aerodromeSource = airplaneSource.getAerodrome();
        if (aerodromeSource != null) {
            airplaneModel.setAerodromeTags(mapTags(aerodromeSource.getTags(), i -> localization.getUnitSearchTagNames().get(i)));
            airplaneModel.setHealingSpeed(Util.intToDoubleTick(aerodromeSource.getHealingSpeed()));
            Double rechargePeriod = Util.intToDoubleShift(aerodromeSource.getRechargingPeriod());
            airplaneModel.setRechargingSpeed(rechargePeriod == null ? null : 1d / rechargePeriod);
            airplaneModel.setRefuelingSpeed(Util.intToDoubleTick(aerodromeSource.getRefuelingSpeed()));
        }
        return airplaneModel;
    }

    @Override
    public SubmarineDepthModel mapSubmarine(AirplaneJsonModel submarineSource) {
        // check if airplane model belongs to submarine
        if (submarineSource == null || submarineSource.getHeightAboveSurface() > 1) {
            return null;
        }
        SubmarineDepthModel submarineModel = new SubmarineDepthModel();
        submarineModel.setUnderwaterTime(Util.intToDoubleShift(submarineSource.getFuel()));
        submarineModel.setAbilityOnFuelEnd(submarineSource.getWorkOnFuelEnd());
        submarineModel.setSwimDepth(Util.intToDoubleShift(submarineSource.getHeightAboveSurface()));
        submarineModel.setAscensionSpeed(submarineSource.getAscensionalRate());
        return submarineModel;
    }

    @Override
    public List<String> mapTags(Long tags, IntFunction<String> valueGetter) {
        List<String> tagValues = new ArrayList<>();
        if (tags != null) {
            List<Integer> tagIds = Util.getPositiveBitIndices(tags);
            for (int tagId : tagIds) {
                tagValues.add(valueGetter.apply(tagId));
            }
        }
        return tagValues;
    }

    /**
     * Unit tags are shifted by 1 for some reason
     * i.e. tag with index 1 has id 2 in game file
     * all units contain tag with value 0
     */
    @Override
    public List<String> mapUnitTags(Long tags) {
        return mapTags(tags, i -> i == 0 ? Constants.GENERIC_UNIT_TAG : localization.getUnitTagNames().get(i - 1));
    }

    @Override
    public List<EnvTag> mapEnvTags(Long tags) {
        List<EnvTag> envTags = new ArrayList<>();
        if (tags != null) {
            List<Integer> tagIds = Util.getPositiveBitIndices(tags);
            for (int tagId : tagIds) {
                EnvTag envTag = new EnvTag();
                envTag.setEnvId(tagId);
                envTag.setEnvName(localization.getEnvSearchTagNames().get(tagId));
                Map.Entry<Integer, EnvJsonModel> targetEnvEntry = envMap.entrySet().stream()
                        .filter(envEntry -> envEntry.getValue().getSearchTags() != null)
                        .filter(envEntry -> {
                            List<Integer> searchTags = Util.getPositiveBitIndices(envEntry.getValue().getSearchTags());
                            if (searchTags.size() != 1) {
                                throw new IllegalStateException("Should be only 1 search tag for single env");
                            }
                            return tagId == searchTags.get(0);
                        })
                        .findAny()
                        .orElseThrow();
                envTag.setEnvImage(imageService.getImageName(Constants.EntityType.ENV.getName(), targetEnvEntry.getKey()));
                envTags.add(envTag);
            }
        }
        return envTags;
    }

    @Override
    public HealModel map(HealJsonModel healSource) {
        if (healSource == null) {
            return null;
        }
        HealModel healModel = new HealModel();
        healModel.setDistance(Util.intToDoubleShift(healSource.getDistance()));
        healModel.setTargetTags(mapUnitTags(healSource.getTargetTags()));
        healModel.setPerSecond(Util.intToDoubleTick(healSource.getPerTick()));
        healModel.setSearchNextDistance(Util.intToDoubleShift(healSource.getSearchNextDistance()));
        healModel.setAutoSearchTargetDistance(Util.intToDoubleShift(healSource.getAutoSearchTargetDistance()));
        healModel.setAutoSearchTargetPeriod(Util.intToDoubleShift(healSource.getAutoSearchTargetPeriod()));
        return healModel;
    }

    @Override
    public ConstructionModel map(int index, BuildingJsonModel buildingSource) {
        if (buildingSource == null) {
            return null;
        }
        ConstructionModel constructionModel = new ConstructionModel();
        EntityInfoModel entityInfoModel = new EntityInfoModel();
        Integer entityId = buildingSource.getId();
        entityInfoModel.setEntityId(entityId);
        entityInfoModel.setEntityNation(Util.getUnitNation(unitNations, localization.getNationNames(), entityId));
        entityInfoModel.setEntityName(localization.getUnitNames().get(entityId));
        entityInfoModel.setEntityImage(imageService.getImageName(Constants.EntityType.UNIT.getName(), entityId));
        constructionModel.setEntityInfo(entityInfoModel);
        constructionModel.setConstructionId(index);
        constructionModel.setDistance(Util.intToDoubleShift(buildingSource.getDistance()));
        constructionModel.setConstructionSpeed(getConstructionSpeed(buildingSource.getProgress()));
        return constructionModel;
    }

    @Override
    public GroundAttackDataWrapper map(String attackGroundString) {
        GroundAttackDataWrapper result = new GroundAttackDataWrapper();
        if (attackGroundString != null) {
            Matcher matcher = ATTACK_GROUND_PATTERN.matcher(attackGroundString);
            if (matcher.find()) {
                // as for now only one weapon can have ground attack
                result.setAttackGround(true);
                result.setWeaponTypeDescriptor(Integer.parseInt(matcher.group(1)));
                result.setWeaponId(Integer.parseInt(matcher.group(2)) - 1);
            }
        }
        return result;
    }

    private AbilityEntityInfoWrapper getAbilityEntityInfo(AbilityDataJsonModel abilityData, List<CreateEnvJsonModel> createEnvSource) {
        Integer id = abilityData.getId();
        Integer research = abilityData.getResearch();
        Integer unit = abilityData.getUnit();
        AbilityEntityInfoWrapper result = new AbilityEntityInfoWrapper();
        if (id != null && research == null && unit == null) {
            result.setEntityType(Constants.EntityType.ENV.getName());
            result.setCreateEnvId(id);
            String tag = createEnvSource.get(id).getTag();
            int entityId = envMap.entrySet().stream()
                    .filter(env -> tag.equals(env.getValue().getCreateTag()))
                    .findAny()
                    .orElseThrow()
                    .getKey();
            result.setEntityId(entityId);
        }
        if (id == null && research != null && unit == null) {
            result.setEntityType(Constants.EntityType.UPGRADE.getName());
            result.setEntityId(research);
        }
        if (id == null && research == null && unit != null) {
            result.setEntityType(Constants.EntityType.UNIT.getName());
            result.setEntityId(unit);
        }
        return result;
    }

    private String getAbilityEntityName(AbilityType abilityType, int entityId) {
        switch (abilityType) {
            case CREATE_UNIT, TRANSFORM -> {
                return localization.getUnitNames().get(entityId);
            }
            case RESEARCH, SPEED_BUFF -> {
                return localization.getResearchNames().get(entityId);
            }
            case CREATE_ENV -> {
                return localization.getEnvNames().get(entityId);
            }
            default -> {
                return null;
            }
        }
    }

    private Integer getEnvCount(AbilityDataJsonModel abilityData, AbilityType abilityType, Integer createEnvId, List<CreateEnvJsonModel> createEnvSource) {
        Integer count = abilityData.getCount();
        //case for wheat
        if (count == null && abilityType == AbilityType.CREATE_ENV) {
            count = createEnvSource.get(createEnvId).getCount();
        }
        return count;
    }

    private AbilityType getAbilityType(AbilityJsonModel abilitySource) {
        Integer typeId = abilitySource.getType();
        return AbilityType.get(typeId != null ? typeId : 0);
    }

    private List<ResourceModel> getWorkCost(WorkJsonModel workSource) {
        if (workSource == null) {
            return mapResources(Arrays.asList(0, 0, 0));
        }
        List<Integer> costOrder = workSource.getCostOrder();
        List<Integer> costProcess = workSource.getCostProcess();
        List<Integer> costStart = workSource.getCostStart();

        if (costOrder != null && costProcess == null && costStart == null) {
            return mapResources(costOrder);
        } else if (costOrder == null && costProcess != null && costStart == null) {
            return mapResources(costProcess);
        } else if (costOrder == null && costProcess == null && costStart != null) {
            return mapResources(costStart);
        } else {
            return mapResources(Arrays.asList(0, 0, 0));
        }
    }

    private int getMultipliable(Integer i) {
        return i == null ? 1 : i;
    }

    private Double getAvgShotTime(List<DirectionAttacksPointJsonModel> points) {
        double result = IntStream.range(0, points.size())
                .map(i -> {
                    int diff = 0;
                    if (i < points.size() - 1) {
                        diff = points.get(i + 1).getTime() - points.get(i).getTime();
                    }
                    return diff;
                })
                .average()
                .orElse(0);
        if (result > 0) {
            return result;
        } else {
            return null;
        }
    }

    /**
     * initial_hp = hp/100*health_param*1.5
     */
    private Double getInitHealth(Integer fullHealth, Integer healthParam) {
        if (fullHealth == null || healthParam == null) {
            return null;
        }
        double healthPerPercent = Util.intToDoubleShift(fullHealth) / 100d;
        return healthPerPercent * Util.intToDoubleShift(healthParam) * Constants.INIT_HEALTH_MODIFIER;
    }

    /**
     * time = (hp-initial_hp)*progress/tickRate, s (not used here, JFI)
     * speed = 1/progress*tickRate, %/sec
     */
    private Double getConstructionSpeed(Integer progress) {
        if (progress == null) {
            return null;
        }
        return Util.intToDoubleShift(progress) * Constants.BUILD_SPEED_MODIFIER;
    }

    private String getWeaponType(boolean isTurret, WeaponModel weaponModel) {
        if (isTurret) {
            return Constants.WeaponType.TURRET.getName();
        } else if (weaponModel.getCharges() != null) {
            return Constants.WeaponType.AERIAL_BOMB.getName();
        } else {
            return weaponModel.getSpread() != null ? Constants.WeaponType.RANGE.getName() : Constants.WeaponType.MELEE.getName();
        }
    }
}