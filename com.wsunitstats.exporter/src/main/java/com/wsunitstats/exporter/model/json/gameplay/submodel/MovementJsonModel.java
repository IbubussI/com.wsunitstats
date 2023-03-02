package com.wsunitstats.exporter.model.json.gameplay.submodel;

import java.util.Map;

public class MovementJsonModel {

    private Integer collisionElasticity;
    private Integer collisionTags;
    private Map<String, Object> holdPassability;
    private Integer moveAngle;
    private Integer pathTracker;
    private Map<String, Object> randomMoveData;
    private Integer rotationSpeed;
    private Boolean runOnDamage;
    private Integer speed;
    private Integer weight;

    public Integer getCollisionElasticity() {
        return collisionElasticity;
    }

    public void setCollisionElasticity(Integer collisionElasticity) {
        this.collisionElasticity = collisionElasticity;
    }

    public Integer getCollisionTags() {
        return collisionTags;
    }

    public void setCollisionTags(Integer collisionTags) {
        this.collisionTags = collisionTags;
    }

    public Map<String, Object> getHoldPassability() {
        return holdPassability;
    }

    public void setHoldPassability(Map<String, Object> holdPassability) {
        this.holdPassability = holdPassability;
    }

    public Integer getMoveAngle() {
        return moveAngle;
    }

    public void setMoveAngle(Integer moveAngle) {
        this.moveAngle = moveAngle;
    }

    public Integer getPathTracker() {
        return pathTracker;
    }

    public void setPathTracker(Integer pathTracker) {
        this.pathTracker = pathTracker;
    }

    public Integer getRotationSpeed() {
        return rotationSpeed;
    }

    public void setRotationSpeed(Integer rotationSpeed) {
        this.rotationSpeed = rotationSpeed;
    }

    public Boolean getRunOnDamage() {
        return runOnDamage;
    }

    public void setRunOnDamage(Boolean runOnDamage) {
        this.runOnDamage = runOnDamage;
    }

    public Integer getSpeed() {
        return speed;
    }

    public void setSpeed(Integer speed) {
        this.speed = speed;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public Map<String, Object> getRandomMoveData() {
        return randomMoveData;
    }

    public void setRandomMoveData(Map<String, Object> randomMoveData) {
        this.randomMoveData = randomMoveData;
    }

    @Override
    public String toString() {
        return "MovementJsonModel{" +
                "collisionElasticity=" + collisionElasticity +
                ", collisionTags=" + collisionTags +
                ", holdPassability=" + holdPassability +
                ", moveAngle=" + moveAngle +
                ", pathTracker=" + pathTracker +
                ", randomMoveData=" + randomMoveData +
                ", rotationSpeed=" + rotationSpeed +
                ", runOnDamage=" + runOnDamage +
                ", speed=" + speed +
                ", weight=" + weight +
                '}';
    }
}
