package com.wsunitstats.domain.submodel;

import jakarta.persistence.Embeddable;

@Embeddable
public class TransportingModel {
    private Integer ownSize;
    private Integer carrySize;
    private Boolean onlyInfantry;

    public Integer getOwnSize() {
        return ownSize;
    }

    public void setOwnSize(Integer ownSize) {
        this.ownSize = ownSize;
    }

    public Integer getCarrySize() {
        return carrySize;
    }

    public void setCarrySize(Integer carrySize) {
        this.carrySize = carrySize;
    }

    public Boolean getOnlyInfantry() {
        return onlyInfantry;
    }

    public void setOnlyInfantry(Boolean onlyInfantry) {
        this.onlyInfantry = onlyInfantry;
    }

    @Override
    public String toString() {
        return "TransportingModel{" +
                "ownSize=" + ownSize +
                ", carrySize=" + carrySize +
                ", onlyInfantry=" + onlyInfantry +
                '}';
    }
}
