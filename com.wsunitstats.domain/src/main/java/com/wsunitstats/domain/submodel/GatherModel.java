package com.wsunitstats.domain.submodel;

import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Embeddable
@Getter
@Setter
@ToString
public class GatherModel {
    private Double bagSize;
    private Double findTargetDistance;
    private Double gatherDistance;
    private Double putDistance;
    private Double perSecond;
    private String env;
    private String resource;
}
