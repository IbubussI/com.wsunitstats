package com.wsunitstats.exporter.model.mapped.submodel;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class ResourceModel {

    private String foodKey = "Food";
    private String woodKey = "Wood";
    private String ironKey = "Iron";

    private int food;
    private int wood;
    private int iron;

    /**
     * Returns new ResourceModel as sum of this and given one
     */
    public ResourceModel add(ResourceModel resToAdd) {
        ResourceModel result = new ResourceModel();
        result.setFood(this.food + resToAdd.food);
        result.setWood(this.wood + resToAdd.wood);
        result.setIron(this.iron + resToAdd.iron);
        result.setLocalization(foodKey, woodKey, ironKey);
        return result;
    }

    @JsonIgnore
    public int getFood() {
        return food;
    }

    public void setFood(int food) {
        this.food = food;
    }

    @JsonIgnore
    public int getWood() {
        return wood;
    }

    public void setWood(int wood) {
        this.wood = wood;
    }

    @JsonIgnore
    public int getIron() {
        return iron;
    }

    public void setIron(int iron) {
        this.iron = iron;
    }

    public void setLocalization(List<String> resourceNames) {
        this.foodKey = resourceNames.get(0);
        this.woodKey = resourceNames.get(1);
        this.ironKey = resourceNames.get(2);
    }

    public void setLocalization(String foodKey, String woodKey, String ironKey) {
        this.foodKey = foodKey;
        this.woodKey = woodKey;
        this.ironKey = ironKey;
    }

    public Map<String, Integer> getData() {
        Map<String, Integer> result = new LinkedHashMap<>();
        result.put(foodKey, food);
        result.put(woodKey, wood);
        result.put(ironKey, iron);
        return result;
    }

    @Override
    public String toString() {
        return "ResourceModel{" +
                "food=" + food +
                ", wood=" + wood +
                ", iron=" + iron +
                '}';
    }
}
