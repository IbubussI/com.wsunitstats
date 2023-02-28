package com.ws.unit.stats.model.raw.json.gameplay.submodel;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.List;

public class AirfieldJsonModel {
    @JsonInclude
    private List<Integer> decelerationPosition;
    private Integer height;
    @JsonInclude
    private List<Integer> landingPosition;
    private Boolean on;
    @JsonInclude
    private List<Integer> stopPosition;

    public List<Integer> getDecelerationPosition() {
        return decelerationPosition;
    }

    public void setDecelerationPosition(List<Integer> decelerationPosition) {
        this.decelerationPosition = decelerationPosition;
    }

    public Integer getHeight() {
        return height;
    }

    public void setHeight(Integer height) {
        this.height = height;
    }

    public List<Integer> getLandingPosition() {
        return landingPosition;
    }

    public void setLandingPosition(List<Integer> landingPosition) {
        this.landingPosition = landingPosition;
    }

    public Boolean getOn() {
        return on;
    }

    public void setOn(Boolean on) {
        this.on = on;
    }

    public List<Integer> getStopPosition() {
        return stopPosition;
    }

    public void setStopPosition(List<Integer> stopPosition) {
        this.stopPosition = stopPosition;
    }

    @Override
    public String toString() {
        return "AirfieldModel{" +
                "decelerationPosition=" + decelerationPosition +
                ", height=" + height +
                ", landingPosition=" + landingPosition +
                ", on=" + on +
                ", stopPosition=" + stopPosition +
                '}';
    }
}
