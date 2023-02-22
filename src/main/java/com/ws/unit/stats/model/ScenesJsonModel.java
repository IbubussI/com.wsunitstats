package com.ws.unit.stats.model;

import java.util.List;

public class ScenesJsonModel {
    private List<Object> envs;
    private List<Object> layers;
    private Integer pathFindTime;
    private List<Object> projectiles;
    private List<UnitJsonModel> units;

    public List<Object> getEnvs() {
        return envs;
    }

    public void setEnvs(List<Object> envs) {
        this.envs = envs;
    }

    public List<Object> getLayers() {
        return layers;
    }

    public void setLayers(List<Object> layers) {
        this.layers = layers;
    }

    public Integer getPathFindTime() {
        return pathFindTime;
    }

    public void setPathFindTime(Integer pathFindTime) {
        this.pathFindTime = pathFindTime;
    }

    public List<Object> getProjectiles() {
        return projectiles;
    }

    public void setProjectiles(List<Object> projectiles) {
        this.projectiles = projectiles;
    }

    public List<UnitJsonModel> getUnits() {
        return units;
    }

    public void setUnits(List<UnitJsonModel> units) {
        this.units = units;
    }

    @Override
    public String toString() {
        return "ScenesJsonModel{" +
                "envs=" + envs +
                ", layers=" + layers +
                ", pathFindTime='" + pathFindTime + '\'' +
                ", projectiles=" + projectiles +
                ", units=" + units +
                '}';
    }
}
