package com.wsunitstats.exporter.model.raw.json.gameplay.submodel;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.List;
import java.util.Map;

public class TurretJsonModel {
    private Integer defaultDirection;
    private Integer idleMode;
    private Map<String, Object> maxDeviation;
    @JsonInclude
    private List<Integer> parentPoint;
    private Integer rotationSpeed;
    private Integer scale;
    private List<Object> weapons;

    public Integer getDefaultDirection() {
        return defaultDirection;
    }

    public void setDefaultDirection(Integer defaultDirection) {
        this.defaultDirection = defaultDirection;
    }

    public Integer getIdleMode() {
        return idleMode;
    }

    public void setIdleMode(Integer idleMode) {
        this.idleMode = idleMode;
    }

    public Map<String, Object> getMaxDeviation() {
        return maxDeviation;
    }

    public void setMaxDeviation(Map<String, Object> maxDeviation) {
        this.maxDeviation = maxDeviation;
    }

    public List<Integer> getParentPoint() {
        return parentPoint;
    }

    public void setParentPoint(List<Integer> parentPoint) {
        this.parentPoint = parentPoint;
    }

    public Integer getRotationSpeed() {
        return rotationSpeed;
    }

    public void setRotationSpeed(Integer rotationSpeed) {
        this.rotationSpeed = rotationSpeed;
    }

    public Integer getScale() {
        return scale;
    }

    public void setScale(Integer scale) {
        this.scale = scale;
    }

    public List<Object> getWeapons() {
        return weapons;
    }

    public void setWeapons(List<Object> weapons) {
        this.weapons = weapons;
    }

    @Override
    public String toString() {
        return "TurretModel{" +
                "defaultDirection=" + defaultDirection +
                ", idleMode=" + idleMode +
                ", maxDeviation=" + maxDeviation +
                ", parentPoint=" + parentPoint +
                ", rotationSpeed=" + rotationSpeed +
                ", scale=" + scale +
                ", weapons=" + weapons +
                '}';
    }
}
