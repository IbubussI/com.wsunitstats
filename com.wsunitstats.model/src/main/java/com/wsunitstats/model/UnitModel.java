package com.wsunitstats.model;

import com.wsunitstats.model.submodel.MovementModel;
import com.wsunitstats.model.submodel.ResourceModel;
import com.wsunitstats.model.submodel.ArmorModel;
import com.wsunitstats.model.submodel.GatherModel;
import com.wsunitstats.model.submodel.TransportingModel;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;

import java.util.List;

@Entity(name = "unit")
public class UnitModel extends GenericEntityModel {
    //Unit traits
    protected Double size;

    @ElementCollection(fetch = FetchType.EAGER)
    protected List<ArmorModel> armor;

    //Movable unit traits
    @Embedded
    protected MovementModel movement;
    @Embedded
    protected TransportingModel transporting;

    //Worker traits
    @ElementCollection(fetch = FetchType.EAGER)
    protected List<GatherModel> gather;

    //Building traits
    @ElementCollection(fetch = FetchType.EAGER)
    protected List<ResourceModel> initCost;
    @ElementCollection(fetch = FetchType.EAGER)
    protected List<ResourceModel> fullCost;

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

    public List<ResourceModel> getInitCost() {
        return initCost;
    }

    public void setInitCost(List<ResourceModel> initCost) {
        this.initCost = initCost;
    }

    public List<ResourceModel> getFullCost() {
        return fullCost;
    }

    public void setFullCost(List<ResourceModel> buildCost) {
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
                ", gameId=" + gameId +
                ", name='" + name + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", nation='" + nation + '\'' +
                '}';
    }
}