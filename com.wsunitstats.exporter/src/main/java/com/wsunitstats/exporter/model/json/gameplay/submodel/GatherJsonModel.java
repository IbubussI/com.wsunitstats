package com.wsunitstats.exporter.model.json.gameplay.submodel;

public class GatherJsonModel {
    private Integer angle;
    private Integer bagsize;
    private Integer envtags;
    private Integer findtargetdistance;
    private Integer gatherdistance;
    private Integer pertick;
    private Integer putdistance;
    private Integer resource;
    private Integer storagetags;
    private Integer unitTags;

    public Integer getAngle() {
        return angle;
    }

    public void setAngle(Integer angle) {
        this.angle = angle;
    }

    public Integer getBagsize() {
        return bagsize;
    }

    public void setBagsize(Integer bagsize) {
        this.bagsize = bagsize;
    }

    public Integer getEnvtags() {
        return envtags;
    }

    public void setEnvtags(Integer envtags) {
        this.envtags = envtags;
    }

    public Integer getFindtargetdistance() {
        return findtargetdistance;
    }

    public void setFindtargetdistance(Integer findtargetdistance) {
        this.findtargetdistance = findtargetdistance;
    }

    public Integer getGatherdistance() {
        return gatherdistance;
    }

    public void setGatherdistance(Integer gatherdistance) {
        this.gatherdistance = gatherdistance;
    }

    public Integer getPertick() {
        return pertick;
    }

    public void setPertick(Integer pertick) {
        this.pertick = pertick;
    }

    public Integer getPutdistance() {
        return putdistance;
    }

    public void setPutdistance(Integer putdistance) {
        this.putdistance = putdistance;
    }

    public Integer getResource() {
        return resource;
    }

    public void setResource(Integer resource) {
        this.resource = resource;
    }

    public Integer getStoragetags() {
        return storagetags;
    }

    public void setStoragetags(Integer storagetags) {
        this.storagetags = storagetags;
    }

    public Integer getUnitTags() {
        return unitTags;
    }

    public void setUnitTags(Integer unitTags) {
        this.unitTags = unitTags;
    }

    @Override
    public String toString() {
        return "GatherJsonModel{" +
                "angle=" + angle +
                ", bagsize=" + bagsize +
                ", envtags=" + envtags +
                ", findtargetdistance=" + findtargetdistance +
                ", gatherdistance=" + gatherdistance +
                ", pertick=" + pertick +
                ", putdistance=" + putdistance +
                ", resource=" + resource +
                ", storagetags=" + storagetags +
                ", unitTags=" + unitTags +
                '}';
    }
}