package com.wsunitstats.domain.submodel.requirement;

import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Embeddable
@Getter
@Setter
@ToString
public class ResearchRequirementModel {
    private int researchId;
    // TODO: remove (redundant for database pov - duplicates existing name)
    private String researchName;
}
