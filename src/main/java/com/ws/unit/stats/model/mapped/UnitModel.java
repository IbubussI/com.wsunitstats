package com.ws.unit.stats.model.mapped;

import com.ws.unit.stats.model.mapped.submodel.ArmorModel;
import com.ws.unit.stats.model.mapped.submodel.GatherModel;
import com.ws.unit.stats.model.mapped.submodel.MovementModel;
import com.ws.unit.stats.model.mapped.submodel.ResourceModel;
import com.ws.unit.stats.model.mapped.submodel.TransportingModel;

import java.util.List;

public class UnitModel extends GenericEntityModel {
    //Unit traits
    protected Double size;
    protected List<ArmorModel> armor;

    //Movable unit traits
    protected MovementModel movement;
    protected TransportingModel transporting;

    //Worker traits
    protected List<GatherModel> gather;

    //Building traits
    protected ResourceModel initCost;
    protected ResourceModel fullCost;

    public Double getSize() {
        return size;
    }

    public void setSize(Double size) {
        this.size = size;
    }

    public List<ArmorModel> getArmor() {
        return armor;
    }

    public void setArmor(List<ArmorModel> armor) {
        this.armor = armor;
    }

    public MovementModel getMovement() {
        return movement;
    }

    public void setMovement(MovementModel speed) {
        this.movement = speed;
    }

    public TransportingModel getTransporting() {
        return transporting;
    }

    public void setTransporting(TransportingModel transportSize) {
        this.transporting = transportSize;
    }

    public List<GatherModel> getGather() {
        return gather;
    }

    public void setGather(List<GatherModel> gather) {
        this.gather = gather;
    }

    public ResourceModel getInitCost() {
        return initCost;
    }

    public void setInitCost(ResourceModel initCost) {
        this.initCost = initCost;
    }

    public ResourceModel getFullCost() {
        return fullCost;
    }

    public void setFullCost(ResourceModel buildCost) {
        this.fullCost = buildCost;
    }

    @Override
    public String toString() {
        return "UnitModel{" +
                "size=" + size +
                ", armor=" + armor +
                ", movement=" + movement +
                ", transporting=" + transporting +
                ", gather=" + gather +
                ", initCost=" + initCost +
                ", fullCost=" + fullCost +
                ", persistenceId=" + persistenceId +
                ", gameId=" + gameId +
                ", name='" + name + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", nation='" + nation + '\'' +
                '}';
    }
}
