package com.wsunitstats.domain.submodel.requirement;

import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Embeddable
@Getter
@Setter
@ToString
public class UnitRequirementModel {
    private int unitId;
    private String unitName;
    private String unitNation;
    private String unitImage;
    private String quantity;
}
