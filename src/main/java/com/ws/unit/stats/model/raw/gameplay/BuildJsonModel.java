package com.ws.unit.stats.model.raw.gameplay;

import java.util.List;
import java.util.Map;

public class BuildJsonModel {
    private Boolean available;
    private Integer collision;
    private List<Integer> costBuilding;
    private List<Integer> costInit;
    private Integer health;
    private Integer locationEnvTags;
    private Object requirements;
    private Integer unit;
    private Boolean wall;
    private Map<String, Object> wallData;

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }

    public Integer getCollision() {
        return collision;
    }

    public void setCollision(Integer collision) {
        this.collision = collision;
    }

    public List<Integer> getCostBuilding() {
        return costBuilding;
    }

    public void setCostBuilding(List<Integer> costBuilding) {
        this.costBuilding = costBuilding;
    }

    public List<Integer> getCostInit() {
        return costInit;
    }

    public void setCostInit(List<Integer> costInit) {
        this.costInit = costInit;
    }

    public Integer getHealth() {
        return health;
    }

    public void setHealth(Integer health) {
        this.health = health;
    }

    public Integer getLocationEnvTags() {
        return locationEnvTags;
    }

    public void setLocationEnvTags(Integer locationEnvTags) {
        this.locationEnvTags = locationEnvTags;
    }

    public Object getRequirements() {
        return requirements;
    }

    public void setRequirements(Object requirements) {
        this.requirements = requirements;
    }

    public Integer getUnit() {
        return unit;
    }

    public void setUnit(Integer unit) {
        this.unit = unit;
    }

    public Boolean getWall() {
        return wall;
    }

    public void setWall(Boolean wall) {
        this.wall = wall;
    }

    public Map<String, Object> getWallData() {
        return wallData;
    }

    public void setWallData(Map<String, Object> wallData) {
        this.wallData = wallData;
    }

    @Override
    public String toString() {
        return "BuildJsonModel{" +
                "available=" + available +
                ", collision=" + collision +
                ", costBuilding=" + costBuilding +
                ", costInit=" + costInit +
                ", health=" + health +
                ", locationEnvTags=" + locationEnvTags +
                ", requirements=" + requirements +
                ", unit=" + unit +
                ", wall=" + wall +
                ", wallData=" + wallData +
                '}';
    }
}
