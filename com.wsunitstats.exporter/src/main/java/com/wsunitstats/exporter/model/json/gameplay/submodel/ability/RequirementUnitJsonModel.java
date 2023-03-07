package com.wsunitstats.exporter.model.json.gameplay.submodel.ability;

public class RequirementUnitJsonModel {
    private Integer type;
    private Integer min;
    private Integer max;

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
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
        return "RequirementUnitJsonModel{" +
                "type=" + type +
                ", min=" + min +
                ", max=" + max +
                '}';
    }
}
