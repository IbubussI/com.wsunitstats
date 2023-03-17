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
    // TODO: remove (redundant for database pov - duplicates existing name)
    private String unitName;
    private Integer min;
    private Integer max;
}
