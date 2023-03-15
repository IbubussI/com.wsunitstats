package com.wsunitstats.domain;

import com.wsunitstats.domain.submodel.BuildingModel;
import com.wsunitstats.domain.submodel.MovementModel;
import com.wsunitstats.domain.submodel.ArmorModel;
import com.wsunitstats.domain.submodel.GatherModel;
import com.wsunitstats.domain.submodel.SupplyModel;
import com.wsunitstats.domain.submodel.TransportingModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Embedded;
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
    //Unit traits
    protected Double size;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    protected List<AbilityModel> abilities;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    protected List<WeaponModel> weapons;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    protected List<TurretModel> turrets;
    @ElementCollection(fetch = FetchType.EAGER)
    protected List<ArmorModel> armor;

    //protected Integer viewRange;
    //protected Integer health;

    //Movable unit traits
    @Embedded
    protected MovementModel movement;
    @Embedded
    protected TransportingModel transporting;
    @Embedded
    protected SupplyModel supply;

    //Worker traits
    @ElementCollection(fetch = FetchType.EAGER)
    protected List<GatherModel> gather;
    //protected ... building; - include building speed hp/sec for 1 worker

    //Building traits
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    protected BuildingModel build;

    // Goats and fowls
    @Column(name = "limit_")
    protected Integer limit;
}
