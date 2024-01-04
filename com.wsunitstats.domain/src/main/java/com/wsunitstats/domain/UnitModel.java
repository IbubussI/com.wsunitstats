package com.wsunitstats.domain;

import com.wsunitstats.domain.submodel.AirplaneModel;
import com.wsunitstats.domain.submodel.BuildingModel;
import com.wsunitstats.domain.submodel.ConstructionModel;
import com.wsunitstats.domain.submodel.HealModel;
import com.wsunitstats.domain.submodel.MovementModel;
import com.wsunitstats.domain.submodel.ArmorModel;
import com.wsunitstats.domain.submodel.GatherModel;
import com.wsunitstats.domain.submodel.SubmarineDepthModel;
import com.wsunitstats.domain.submodel.SupplyModel;
import com.wsunitstats.domain.submodel.TagModel;
import com.wsunitstats.domain.submodel.TransportingModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.ability.container.GenericAbilityContainer;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "unit")
@Getter
@Setter
@ToString
public class UnitModel extends GenericEntityModel {
    // Unit traits
    private String nation;
    @Column(length = 1023)
    private String description;
    private Double size;
    private Double viewRange;
    private Double health;
    private Double regenerationSpeed;
    private Integer weaponOnDeath;
    private boolean controllable;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<TagModel> tags;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<TagModel> searchTags;
    private Double lifetime;
    private Boolean parentMustIdle;
    private Boolean receiveFriendlyDamage;
    private Integer threat;
    private Integer weight;
    private Integer storageMultiplier;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<GenericAbilityContainer> abilities;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<WeaponModel> weapons;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<TurretModel> turrets;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<ArmorModel> armor;

    // Movable unit traits
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private MovementModel movement;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private TransportingModel transporting;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private SupplyModel supply;

    // Worker traits
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<GatherModel> gather;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private HealModel heal;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<ConstructionModel> construction;

    // Building traits
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private BuildingModel build;

    // Jet traits
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private AirplaneModel airplane;

    // Submarine traits
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private SubmarineDepthModel submarine;

    // Goats and fowls
    @Column(name = "limit_")
    private Integer limit;
}
