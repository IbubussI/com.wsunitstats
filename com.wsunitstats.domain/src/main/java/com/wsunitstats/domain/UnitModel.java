package com.wsunitstats.domain;

import com.wsunitstats.domain.submodel.MovementModel;
import com.wsunitstats.domain.submodel.ResourceModel;
import com.wsunitstats.domain.submodel.ArmorModel;
import com.wsunitstats.domain.submodel.GatherModel;
import com.wsunitstats.domain.submodel.TransportingModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
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

    @ElementCollection(fetch = FetchType.EAGER)
    protected List<ArmorModel> armor;

    //Movable unit traits
    @Embedded
    protected MovementModel movement;
    @Embedded
    protected TransportingModel transporting;

    //Worker traits
    @ElementCollection(fetch = FetchType.EAGER)
    protected List<GatherModel> gather;

    //Building traits
    @ElementCollection(fetch = FetchType.EAGER)
    protected List<ResourceModel> initCost;
    @ElementCollection(fetch = FetchType.EAGER)
    protected List<ResourceModel> fullCost;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    protected List<AbilityModel> abilities;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    protected List<WeaponModel> weapons;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    protected List<TurretModel> turrets;
}
