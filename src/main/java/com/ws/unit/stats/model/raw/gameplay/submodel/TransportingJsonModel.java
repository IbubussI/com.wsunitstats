package com.ws.unit.stats.model.raw.gameplay.submodel;

public class TransportingJsonModel {
    private Integer tags;
    private Integer unitLimit;
    private Integer volume;
    private Integer ownVolume;

    public Integer getTags() {
        return tags;
    }

    public void setTags(Integer tags) {
        this.tags = tags;
    }

    public Integer getUnitLimit() {
        return unitLimit;
    }

    public void setUnitLimit(Integer unitLimit) {
        this.unitLimit = unitLimit;
    }

    public Integer getVolume() {
        return volume;
    }

    public void setVolume(Integer volume) {
        this.volume = volume;
    }

    public Integer getOwnVolume() {
        return ownVolume;
    }

    public void setOwnVolume(Integer ownVolume) {
        this.ownVolume = ownVolume;
    }

    @Override
    public String toString() {
        return "TransportingJsonModel{" +
                "tags=" + tags +
                ", unitLimit=" + unitLimit +
                ", volume=" + volume +
                ", ownVolume=" + ownVolume +
                '}';
    }
}
