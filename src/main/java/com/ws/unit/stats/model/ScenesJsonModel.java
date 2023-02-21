package com.ws.unit.stats.model;

import java.util.List;

public class ScenesJsonModel {
    private List<Object> envs;
    private List<Object> layers;
    private String pathFindTime;
    private List<Object> projectiles;
    private List<UnitJsonModel> units;

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
