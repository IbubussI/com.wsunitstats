package com.wsunitstats.domain.submodel.ability.ref;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.wsunitstats.domain.PersistentObject;
import com.wsunitstats.domain.submodel.requirement.RequirementsModel;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability-generic-supertype")
@Inheritance(strategy = InheritanceType.JOINED)
@Setter
@Getter
@ToString
public abstract class GenericAbility extends PersistentObject {
    private int abilityId;
    private int abilityType;
    private String abilityName;
    @Embedded
    @JsonInclude(value = JsonInclude.Include.CUSTOM, valueFilter = RequirementsModel.class)
    private RequirementsModel requirements;
}
