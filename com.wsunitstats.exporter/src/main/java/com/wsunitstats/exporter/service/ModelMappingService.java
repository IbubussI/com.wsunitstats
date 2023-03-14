package com.wsunitstats.exporter.service;

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
import com.wsunitstats.exporter.model.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.CreateEnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.EnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.GatherJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.MovementJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ProjectileJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.SupplyJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.TransportingJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.TurretJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityOnActionJsonModel;
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

public interface ModelMappingService {
    ArmorModel map(ArmorJsonModel.Entry source, int probabilitiesSum);

    GatherModel map(GatherJsonModel source, LocalizationKeyModel localization);

    List<ResourceModel> mapResources(List<Integer> source, LocalizationKeyModel localization);

    TransportingModel map(TransportingJsonModel source);

    MovementModel map(MovementJsonModel source);

    LocalizationKeyModel map(SessionInitFileModel sessionInitSource, MainStartupFileModel mainStartupSource);

    AbilityModel map(int abilityIndex,
                     AbilityJsonModel abilitySource,
                     WorkJsonModel workSource,
                     List<CreateEnvJsonModel> createEnvSource,
                     AbilityOnActionJsonModel onActionSource,
                     Map<Integer, EnvJsonModel> envSource,
                     LocalizationKeyModel localization);

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
}
