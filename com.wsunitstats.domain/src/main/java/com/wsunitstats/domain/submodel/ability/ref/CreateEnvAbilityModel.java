package com.wsunitstats.domain.submodel.ability.ref;

import com.wsunitstats.domain.EntityInfoModel;
import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability-create-env")
@Getter
@Setter
@ToString
public class CreateEnvAbilityModel extends GenericAbility {
    @Column(name = "count_")
    private Integer count;
    @Embedded
    private EntityInfoModel entityInfo;
}
