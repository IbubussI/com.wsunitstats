package com.wsunitstats.domain.submodel.ability;

import com.wsunitstats.domain.EntityInfoModel;
import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability_create_unit")
@Getter
@Setter
@ToString
public class CreateUnitAbilityModel extends GenericAbility {
    @Column(name = "count_")
    private Integer count;
    private Double lifeTime;
    @Embedded
    private EntityInfoModel entityInfo;
}
