package com.wsunitstats.exporter.model.mapped.submodel;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.wsunitstats.exporter.service.serializer.ResourceModelSerializer;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@JsonSerialize(using = ResourceModelSerializer.class)
public class ResourceModel {
    private static final String RESOURCE_KEY = "resource";
    private static final String RESOURCE_VALUE = "value";

    private String foodKey = "food";
    private String woodKey = "wood";
    private String ironKey = "iron";

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

    public List<Map<String, Object>> getData() {
        List<Map<String, Object>> result = new ArrayList<>();

        Map<String, Object> foodMap = new LinkedHashMap<>();
        foodMap.put(RESOURCE_KEY, foodKey);
        foodMap.put(RESOURCE_VALUE, food);
        result.add(foodMap);

        Map<String, Object> woodMap = new LinkedHashMap<>();
        woodMap.put(RESOURCE_KEY, woodKey);
        woodMap.put(RESOURCE_VALUE, wood);
        result.add(woodMap);

        Map<String, Object> ironMap = new LinkedHashMap<>();
        ironMap.put(RESOURCE_KEY, ironKey);
        ironMap.put(RESOURCE_VALUE, iron);
        result.add(ironMap);

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
