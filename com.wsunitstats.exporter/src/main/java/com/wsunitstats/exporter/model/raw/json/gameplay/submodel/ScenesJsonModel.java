package com.wsunitstats.exporter.model.raw.json.gameplay.submodel;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.wsunitstats.exporter.service.serializer.EnvJsonModelDeserializer;
import com.wsunitstats.exporter.service.serializer.IndexedArrayDataModelSerializer;
import com.wsunitstats.exporter.service.serializer.UnitJsonModelDeserializer;

import java.util.List;
import java.util.Map;

public class ScenesJsonModel {
    @JsonDeserialize(using = EnvJsonModelDeserializer.class)
    @JsonSerialize(using = IndexedArrayDataModelSerializer.class)
    private Map<Integer, EnvJsonModel> envs;
    private List<Object> layers;
    private Integer pathFindTime;
    private List<Object> projectiles;
    @JsonDeserialize(using = UnitJsonModelDeserializer.class)
    @JsonSerialize(using = IndexedArrayDataModelSerializer.class)
    private Map<Integer, UnitJsonModel> units;

    public Map<Integer, EnvJsonModel> getEnvs() {
        return envs;
    }

    public void setEnvs(Map<Integer, EnvJsonModel> envs) {
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
