package com.wsunitstats.domain.submodel.weapon;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Embeddable
public class DamageModel {
    @Column(name = "damageType")
    private String type;
    @Column(name = "damageValue")
    private Double value;
}
