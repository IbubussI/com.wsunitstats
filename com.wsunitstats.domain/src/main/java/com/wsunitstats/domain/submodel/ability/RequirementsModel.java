package com.wsunitstats.domain.submodel.ability;

import java.util.List;

public class RequirementsModel {
    private List<UnitRequirementModel> units;
    private List<ResearchRequirementModel> researches;
    private boolean researchesAll;
    private boolean unitsAll;

    public List<UnitRequirementModel> getUnits() {
        return units;
    }

    public void setUnits(List<UnitRequirementModel> units) {
        this.units = units;
    }

    public List<ResearchRequirementModel> getResearches() {
        return researches;
    }

    public void setResearches(List<ResearchRequirementModel> researches) {
        this.researches = researches;
    }

    public boolean isResearchesAll() {
        return researchesAll;
    }

    public void setResearchesAll(boolean researchesAll) {
        this.researchesAll = researchesAll;
    }

    public boolean isUnitsAll() {
        return unitsAll;
    }

    public void setUnitsAll(boolean unitsAll) {
        this.unitsAll = unitsAll;
    }

    @Override
    public String toString() {
        return "RequirementsModel{" +
                "units=" + units +
                ", researches=" + researches +
                ", researchesAll=" + researchesAll +
                ", unitsAll=" + unitsAll +
                '}';
    }
}
