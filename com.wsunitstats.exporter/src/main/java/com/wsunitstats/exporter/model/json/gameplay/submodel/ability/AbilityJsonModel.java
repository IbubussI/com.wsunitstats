package com.wsunitstats.exporter.model.json.gameplay.submodel.ability;

import java.util.Map;

public class AbilityJsonModel {
    private AbilityDataJsonModel data;
    private RequirementsJsonModel requirements;
    private Integer type;

    //Landscape-dependent (requires water - amph tank, deep water - submarine, plain ground - wonder-emma)
    private Map<String, Object> requiredPassability;

    public AbilityDataJsonModel getData() {
        return data;
    }

    public void setData(AbilityDataJsonModel data) {
        this.data = data;
    }

    public RequirementsJsonModel getRequirements() {
        return requirements;
    }

    public void setRequirements(RequirementsJsonModel requirements) {
        this.requirements = requirements;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Map<String, Object> getRequiredPassability() {
        return requiredPassability;
    }

    public void setRequiredPassability(Map<String, Object> requiredPassability) {
        this.requiredPassability = requiredPassability;
    }

    @Override
    public String toString() {
        return "AbilityJsonModel{" +
                "data=" + data +
                ", requirements=" + requirements +
                ", type=" + type +
                ", requiredPassability=" + requiredPassability +
                '}';
    }
}
