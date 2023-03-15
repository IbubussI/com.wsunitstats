package com.wsunitstats.exporter.model.json.gameplay.submodel;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityOnActionJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.air.AirfieldJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.air.AirplaneJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.weapon.WeaponJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.work.WorkJsonModel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;
import java.util.Map;

@Getter
@Setter
@ToString
public class UnitJsonModel {
    private List<AbilityJsonModel> abilities;
    private Integer adjustToGround;
    private AbilityOnActionJsonModel abilityOnAction;
    private Map<String, Object> agro;
    private List<AirfieldJsonModel> airfields;
    private AirplaneJsonModel airplane;
    @JsonProperty("armor_")
    private ArmorJsonModel armor;
    private Map<String, Object> attackReaction;
    private List<Object> building;
    private Boolean controllable;
    private List<Object> corpses;
    private List<CreateEnvJsonModel> createEnvs;
    private Integer danceDuration;
    private List<GatherJsonModel> gather;
    private Map<String, Object> heal;
    private List<Integer> healMeCost;
    private Integer health;
    private Integer hiddenInFows;
    private MovementJsonModel movement;
    private IncomeJsonModel income;
    private Integer lifeTime;
    private Integer openFows;
    private Boolean parentMustIdle;
    private Map<String, Object> passability;
    private List<Object> rally;
    private Integer regeneration;
    private Boolean receiveFriendlyDamage;
    @JsonProperty("scale_")
    private Integer scale;
    private Long searchTags;
    private Integer size;
    private Integer storageMultiplier;
    private SupplyJsonModel supply;
    private Long tags;
    private Integer threat;
    private TransportingJsonModel transporting;
    private List<TurretJsonModel> turrets;
    private Integer viewRange;
    private Integer weaponUseOnDeath;
    private List<WeaponJsonModel> weapons;
    private List<WorkJsonModel> work;
}

