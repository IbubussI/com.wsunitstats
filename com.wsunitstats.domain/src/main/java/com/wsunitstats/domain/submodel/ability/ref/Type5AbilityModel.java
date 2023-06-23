package com.wsunitstats.domain.submodel.ability.ref;

import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * unused; need to understand what's that about
 */
@Entity(name = "ability-5")
@Getter
@Setter
@ToString
public class Type5AbilityModel extends GenericAbility {
    private Double duration;
}
