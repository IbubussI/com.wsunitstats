package com.wsunitstats.domain.submodel;

import jakarta.persistence.Embeddable;

@Embeddable
public class MovementModel {
    private Integer speed;
    private Double rotationSpeed;

    public Integer getSpeed() {
        return speed;
    }

    public void setSpeed(Integer speed) {
        this.speed = speed;
    }

    public Double getRotationSpeed() {
        return rotationSpeed;
    }

    public void setRotationSpeed(Double rotationSpeed) {
        this.rotationSpeed = rotationSpeed;
    }

    @Override
    public String toString() {
        return "MovementModel{" +
                "speed=" + speed +
                ", rotationSpeed=" + rotationSpeed +
                '}';
    }
}
