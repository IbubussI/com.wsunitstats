package com.wsunitstats.domain.submodel.ability.container;

import com.wsunitstats.domain.submodel.DistanceModel;
import com.wsunitstats.domain.submodel.ability.GenericAbility;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability_container_on_action")
@Getter
@Setter
@ToString
public class OnActionAbilityContainer extends GenericAbilityContainer {
    private DistanceModel distance;
    private Boolean onAgro;
    private Boolean enabled;
    private Double rechargeTime;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private GenericAbility ability;
}
