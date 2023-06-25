package com.wsunitstats.domain.submodel.ability;

import com.wsunitstats.domain.EntityInfoModel;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability_transform")
@Getter
@Setter
@ToString
public class TransformAbilityModel extends GenericAbility {
    @Embedded
    private EntityInfoModel entityInfo;
}
