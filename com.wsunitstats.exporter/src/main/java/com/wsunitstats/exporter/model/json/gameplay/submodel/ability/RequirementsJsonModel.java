package com.wsunitstats.exporter.model.json.gameplay.submodel.ability;

import java.util.List;

public class RequirementsJsonModel {
    private List<RequirementUnitJsonModel> units;
    private List<Integer> researches;
    private Boolean researchesAll;
    private Boolean unitsAll;

    public List<RequirementUnitJsonModel> getUnits() {
        return units;
    }

    public void setUnits(List<RequirementUnitJsonModel> units) {
        this.units = units;
    }

    public List<Integer> getResearches() {
        return researches;
    }

    public void setResearches(List<Integer> researches) {
        this.researches = researches;
    }

    public Boolean getResearchesAll() {
        return researchesAll;
    }

    public void setResearchesAll(Boolean researchesAll) {
        this.researchesAll = researchesAll;
    }

    public Boolean getUnitsAll() {
        return unitsAll;
    }

    public void setUnitsAll(Boolean unitsAll) {
        this.unitsAll = unitsAll;
    }

    @Override
    public String toString() {
        return "RequirementsJsonModel{" +
                "units=" + units +
                ", researches=" + researches +
                ", unitsAll=" + unitsAll +
                ", researchesAll=" + researchesAll +
                '}';
    }
}
