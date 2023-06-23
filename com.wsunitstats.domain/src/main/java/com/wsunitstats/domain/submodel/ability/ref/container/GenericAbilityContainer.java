package com.wsunitstats.domain.submodel.ability.ref.container;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Entity;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability-container-generic-supertype")
@Inheritance(strategy = InheritanceType.JOINED)
@Setter
@Getter
@ToString
public abstract class GenericAbilityContainer extends PersistentObject {
    private Integer containerType;
    private String containerName;
}
