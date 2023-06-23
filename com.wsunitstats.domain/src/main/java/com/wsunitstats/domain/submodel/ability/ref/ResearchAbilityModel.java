package com.wsunitstats.domain.submodel.ability.ref;

import com.wsunitstats.domain.EntityInfoModel;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability-research")
@Getter
@Setter
@ToString
public class ResearchAbilityModel extends GenericAbility {
    @Embedded
    private EntityInfoModel entityInfo;
}
