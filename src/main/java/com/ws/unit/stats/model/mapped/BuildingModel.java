package com.ws.unit.stats.model.mapped;

import com.ws.unit.stats.model.mapped.submodel.ResourceModel;

public class BuildingModel extends GenericUnitModel {

    private ResourceModel initCost;

    public ResourceModel getInitCost() {
        return initCost;
    }

    public void setInitCost(ResourceModel initCost) {
        this.initCost = initCost;
    }

    @Override
    public String toString() {
        return "BuildingModel{" +
                "initCost=" + initCost +
                ", size=" + size +
                ", armor=" + armor +
                ", persistenceId=" + persistenceId +
                ", gameId=" + gameId +
                ", name='" + name + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", nation='" + nation + '\'' +
                ", type='" + type + '\'' +
                ", creationCost=" + creationCost +
                '}';
    }
}
