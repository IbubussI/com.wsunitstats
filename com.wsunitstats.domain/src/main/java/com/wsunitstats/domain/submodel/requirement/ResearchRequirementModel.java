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
    private String researchName;
    private String researchImage;
}
