package com.ws.unit.stats.model.mapped;

import com.ws.unit.stats.model.mapped.submodel.ArmorModel;
import com.ws.unit.stats.model.mapped.submodel.GatherModel;
import com.ws.unit.stats.model.mapped.submodel.ResourceModel;
import com.ws.unit.stats.model.mapped.submodel.TransportingModel;

public class UnitModel extends GenericEntityModel {

    protected Double size;
    protected ArmorModel armor;
    protected Integer speed;
    protected TransportingModel transporting;
    protected GatherModel gather;
    protected ResourceModel initCost;

    public Double getSize() {
        return size;
    }

    public void setSize(Double size) {
        this.size = size;
    }

    public ArmorModel getArmor() {
        return armor;
    }

    public void setArmor(ArmorModel armor) {
        this.armor = armor;
    }

    public Integer getSpeed() {
        return speed;
    }

    public void setSpeed(Integer speed) {
        this.speed = speed;
    }

    public TransportingModel getTransporting() {
        return transporting;
    }

    public void setTransporting(TransportingModel transportSize) {
        this.transporting = transportSize;
    }

    public GatherModel getGather() {
        return gather;
    }

    public void setGather(GatherModel gather) {
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
                ", speed=" + speed +
                ", transportSize=" + transporting +
                ", gather=" + gather +
                ", initCost=" + initCost +
                '}';
    }
}
