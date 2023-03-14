package com.wsunitstats.domain.submodel.requirement;

import jakarta.persistence.Embeddable;

@Embeddable
public class UnitRequirementModel {
    private int unitId;
    private String unitName; // To be removed
    private Integer min;
    private Integer max;

    public int getUnitId() {
        return unitId;
    }

    public void setUnitId(int unitId) {
        this.unitId = unitId;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public Integer getMin() {
        return min;
    }

    public void setMin(Integer min) {
        this.min = min;
    }

    public Integer getMax() {
        return max;
    }

    public void setMax(Integer max) {
        this.max = max;
    }

    @Override
    public String toString() {
        return "UnitRequirementModel{" +
                "unitId=" + unitId +
                ", unitName='" + unitName + '\'' +
                ", min=" + min +
                ", max=" + max +
                '}';
    }
}
