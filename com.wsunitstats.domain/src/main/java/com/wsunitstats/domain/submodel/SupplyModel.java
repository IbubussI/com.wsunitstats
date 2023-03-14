package com.wsunitstats.domain.submodel;

import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Embeddable
public class SupplyModel {
    private Double consume;
    private Double produce;
}
