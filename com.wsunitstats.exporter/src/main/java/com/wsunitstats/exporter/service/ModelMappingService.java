package com.wsunitstats.exporter.service;

import com.wsunitstats.domain.submodel.AirplaneModel;
import com.wsunitstats.domain.submodel.BuildingModel;
import com.wsunitstats.domain.submodel.ConstructionModel;
import com.wsunitstats.domain.submodel.HealModel;
import com.wsunitstats.domain.submodel.IncomeModel;
import com.wsunitstats.domain.submodel.SubmarineDepthModel;
import com.wsunitstats.domain.submodel.SupplyModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;
import com.wsunitstats.domain.submodel.ability.OnActionModel;
import com.wsunitstats.domain.submodel.requirement.RequirementsModel;
import com.wsunitstats.domain.submodel.weapon.BuffModel;
import com.wsunitstats.domain.submodel.weapon.DamageModel;
import com.wsunitstats.domain.submodel.DistanceModel;
import com.wsunitstats.domain.submodel.weapon.ProjectileModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.exporter.model.ImageModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildingJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.CreateEnvJsonModel;
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
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityOnActionJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.air.AirplaneJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.requirement.RequirementsJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.weapon.BuffJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.weapon.DistanceJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.weapon.WeaponJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.work.WorkJsonModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.model.LocalizationKeyModel;
import com.wsunitstats.domain.submodel.ArmorModel;
import com.wsunitstats.domain.submodel.GatherModel;
import com.wsunitstats.domain.submodel.MovementModel;
import com.wsunitstats.domain.submodel.ResourceModel;
import com.wsunitstats.domain.submodel.TransportingModel;

import java.util.List;
import java.util.Map;
import java.util.function.IntFunction;

public interface ModelMappingService {
    ArmorModel map(ArmorJsonModel.Entry source, int probabilitiesSum);

    GatherModel map(GatherJsonModel source, LocalizationKeyModel localization);

    List<ResourceModel> mapResources(Map<String, ImageModel> resourceImages, List<Integer> source, LocalizationKeyModel localization);

    TransportingModel map(TransportingJsonModel source);

    MovementModel map(MovementJsonModel source);

    LocalizationKeyModel map(SessionInitFileModel sessionInitSource, MainStartupFileModel mainStartupSource);

    AbilityModel map(int abilityIndex,
                     AbilityJsonModel abilitySource,
                     WorkJsonModel workSource,
                     List<CreateEnvJsonModel> createEnvSource,
                     AbilityOnActionJsonModel onActionSource,
                     Map<Integer, EnvJsonModel> envSource,
                     LocalizationKeyModel localization,
                     Map<String, ImageModel> resourceImages);

    RequirementsModel map(RequirementsJsonModel source, LocalizationKeyModel localization);

    OnActionModel map(AbilityOnActionJsonModel onActionSource);

    WeaponModel map(WeaponJsonModel weaponSource, Map<Integer, ProjectileJsonModel> projectileSource, LocalizationKeyModel localization);

    List<DamageModel> mapDamages(List<List<Integer>> damagesSource, LocalizationKeyModel localization);

    DistanceModel map(DistanceJsonModel distanceSource);

    ProjectileModel map(int id, ProjectileJsonModel projectileSource);

    BuffModel map(BuffJsonModel buffSource, LocalizationKeyModel localization);

    TurretModel map(TurretJsonModel turretSource,
                    Map<Integer, ProjectileJsonModel> projectileSource,
                    LocalizationKeyModel localization);

    SupplyModel map(SupplyJsonModel supplySource);

    BuildingModel map(Map<String, ImageModel> resourceImages, UnitJsonModel unitSource, BuildJsonModel buildSource, LocalizationKeyModel localization);

    IncomeModel map(Map<String, ImageModel> resourceImages, IncomeJsonModel incomeSource, LocalizationKeyModel localization);

    AirplaneModel mapAirplane(AirplaneJsonModel airplaneSource, LocalizationKeyModel localization);

    SubmarineDepthModel mapSubmarine(AirplaneJsonModel submarineSource);

    /**
     * Works fine for all tags except unit tags. Use {@link ModelMappingService#mapUnitTags} for them
     */
    List<String> mapTags(Long tags, IntFunction<String> valueGetter);

    /**
     * Use this for unit tags
     */
    List<String> mapUnitTags(Long tags, LocalizationKeyModel localization);

    HealModel map(HealJsonModel healSource, LocalizationKeyModel localization);

    ConstructionModel map(BuildingJsonModel buildingSource);
}
