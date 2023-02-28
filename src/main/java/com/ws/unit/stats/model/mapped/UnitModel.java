package com.ws.unit.stats.model.mapped;

import com.ws.unit.stats.model.mapped.submodel.ArmorModel;
import com.ws.unit.stats.model.mapped.submodel.GatherModel;
import com.ws.unit.stats.model.mapped.submodel.MovementModel;
import com.ws.unit.stats.model.mapped.submodel.ResourceModel;
import com.ws.unit.stats.model.mapped.submodel.TransportingModel;

import java.util.List;

public class UnitModel extends GenericEntityModel {

    protected Double size;
    protected List<ArmorModel> armor;
    protected MovementModel movement;
    protected TransportingModel transporting;
    protected List<GatherModel> gather;
    protected ResourceModel initCost;

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

    @Override
    public String toString() {
        return "UnitModel{" +
                "size=" + size +
                ", armor=" + armor +
                ", speed=" + movement +
                ", transportSize=" + transporting +
                ", gather=" + gather +
                ", initCost=" + initCost +
                '}';
    }
}
