package com.wsunitstats.domain.submodel;

import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Embeddable
@Getter
@Setter
@ToString
public class ReserveModel {
    private Integer reserveLimit;
    private Double reserveTime;
}
