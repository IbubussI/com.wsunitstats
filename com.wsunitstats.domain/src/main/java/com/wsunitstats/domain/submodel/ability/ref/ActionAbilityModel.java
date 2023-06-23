package com.wsunitstats.domain.submodel.ability.ref;

import com.wsunitstats.domain.EntityInfoModel;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability-action")
@Getter
@Setter
@ToString
public class ActionAbilityModel extends GenericAbility {
    @Embedded
    private EntityInfoModel entityInfo;
    private Double duration;
}
