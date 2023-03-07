package com.wsunitstats.domain.submodel.ability;

import com.wsunitstats.domain.submodel.ResourceModel;

public class AbilitiesModel {
    private Integer entityId;
    private Integer entityName;
    private String entityType;

    private Integer count;
    private Integer duration;
    private Integer lifeTime;

    private RequirementsModel requirements;
    private ResourceModel cost;
    private Integer makeTime;

    public Integer getEntityId() {
        return entityId;
    }

    public void setEntityId(Integer entityId) {
        this.entityId = entityId;
    }

    public Integer getEntityName() {
        return entityName;
    }

    public void setEntityName(Integer entityName) {
        this.entityName = entityName;
    }

    public String getEntityType() {
        return entityType;
    }

    public void setEntityType(String entityType) {
        this.entityType = entityType;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Integer getLifeTime() {
        return lifeTime;
    }

    public void setLifeTime(Integer lifeTime) {
        this.lifeTime = lifeTime;
    }

    public RequirementsModel getRequirements() {
        return requirements;
    }

    public void setRequirements(RequirementsModel requirements) {
        this.requirements = requirements;
    }

    public ResourceModel getCost() {
        return cost;
    }

    public void setCost(ResourceModel cost) {
        this.cost = cost;
    }

    public Integer getMakeTime() {
        return makeTime;
    }

    public void setMakeTime(Integer makeTime) {
        this.makeTime = makeTime;
    }

    @Override
    public String toString() {
        return "AbilitiesModel{" +
                "entityId=" + entityId +
                ", entityName=" + entityName +
                ", entityType='" + entityType + '\'' +
                ", count=" + count +
                ", duration=" + duration +
                ", lifeTime=" + lifeTime +
                ", requirements=" + requirements +
                ", cost=" + cost +
                ", makeTime=" + makeTime +
                '}';
    }
}
