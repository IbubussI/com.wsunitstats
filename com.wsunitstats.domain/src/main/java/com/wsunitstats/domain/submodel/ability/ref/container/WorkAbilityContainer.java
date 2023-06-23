package com.wsunitstats.domain.submodel.ability.ref.container;

import com.wsunitstats.domain.PersistentObject;
import com.wsunitstats.domain.submodel.ability.ref.GenericAbility;
import com.wsunitstats.domain.submodel.ability.ref.WorkModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability-container-work")
@Getter
@Setter
@ToString
public class WorkAbilityContainer extends PersistentObject {
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private WorkModel work;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private GenericAbility ability;
}
