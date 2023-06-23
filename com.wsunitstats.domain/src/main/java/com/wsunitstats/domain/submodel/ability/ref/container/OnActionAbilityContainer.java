package com.wsunitstats.domain.submodel.ability.ref.container;

import com.wsunitstats.domain.PersistentObject;
import com.wsunitstats.domain.submodel.DistanceModel;
import com.wsunitstats.domain.submodel.ability.ref.GenericAbility;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability-container-on-action")
@Getter
@Setter
@ToString
public class OnActionAbilityContainer extends PersistentObject {
    private DistanceModel distance;
    private Boolean onAgro;
    private Double rechargeTime;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private GenericAbility ability;
}
