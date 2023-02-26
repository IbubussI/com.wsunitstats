package com.ws.unit.stats.model.raw.gameplay;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.ws.unit.stats.service.reader.json.IndexedArrayDataModelSerializer;
import com.ws.unit.stats.service.reader.json.UnitJsonModelDeserializer;

import java.util.List;
import java.util.Map;

public class ScenesJsonModel {
    private List<Object> envs;
    private List<Object> layers;
    private Integer pathFindTime;
    private List<Object> projectiles;

    @JsonDeserialize(using = UnitJsonModelDeserializer.class)
    @JsonSerialize(using = IndexedArrayDataModelSerializer.class)
    private Map<Integer, UnitJsonModel> units;

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

    public Map<Integer, UnitJsonModel> getUnits() {
        return units;
    }

    public void setUnits(Map<Integer, UnitJsonModel> units) {
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
