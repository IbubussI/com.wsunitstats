package com.wsunitstats.domain.submodel.ability.container;

import com.wsunitstats.domain.submodel.ability.GenericAbility;
import com.wsunitstats.domain.submodel.ability.WorkModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability_container_work")
@Getter
@Setter
@ToString
public class WorkAbilityContainer extends GenericAbilityContainer {
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private WorkModel work;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private GenericAbility ability;
}
