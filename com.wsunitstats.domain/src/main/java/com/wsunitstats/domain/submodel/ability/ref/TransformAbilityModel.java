package com.wsunitstats.domain.submodel.ability.ref;

import com.wsunitstats.domain.EntityInfoModel;
import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability-transform")
@Getter
@Setter
@ToString
public class TransformAbilityModel extends PersistentObject {
    @Embedded
    private EntityInfoModel entityInfo;
}
