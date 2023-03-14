package com.wsunitstats.domain.submodel.requirement;

import jakarta.persistence.Embeddable;

@Embeddable
public class ResearchRequirementModel {
    private int researchId;
    private String researchName;

    public int getResearchId() {
        return researchId;
    }

    public void setResearchId(int researchId) {
        this.researchId = researchId;
    }

    public String getResearchName() {
        return researchName;
    }

    public void setResearchName(String researchName) {
        this.researchName = researchName;
    }

    @Override
    public String toString() {
        return "ResearchRequirementModel{" +
                "researchId=" + researchId +
                ", researchName='" + researchName + '\'' +
                '}';
    }
}
