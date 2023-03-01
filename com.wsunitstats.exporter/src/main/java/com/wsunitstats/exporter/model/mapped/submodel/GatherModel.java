package com.wsunitstats.exporter.model.mapped.submodel;

public class GatherModel {
    private Double bagSize;
    private Double findTargetDistance;
    private Double gatherDistance;
    private Double putDistance;
    private Double perSecond;
    private String env;
    private String resource;

    public Double getBagSize() {
        return bagSize;
    }

    public void setBagSize(Double bagSize) {
        this.bagSize = bagSize;
    }

    public Double getFindTargetDistance() {
        return findTargetDistance;
    }

    public void setFindTargetDistance(Double findTargetDistance) {
        this.findTargetDistance = findTargetDistance;
    }

    public Double getGatherDistance() {
        return gatherDistance;
    }

    public void setGatherDistance(Double gatherDistance) {
        this.gatherDistance = gatherDistance;
    }

    public Double getPutDistance() {
        return putDistance;
    }

    public void setPutDistance(Double putDistance) {
        this.putDistance = putDistance;
    }

    public Double getPerSecond() {
        return perSecond;
    }

    public void setPerSecond(Double perSecond) {
        this.perSecond = perSecond;
    }

    public String getEnv() {
        return env;
    }

    public void setEnv(String env) {
        this.env = env;
    }

    public String getResource() {
        return resource;
    }

    public void setResource(String resource) {
        this.resource = resource;
    }

    @Override
    public String toString() {
        return "GatherModel{" +
                "bagSize=" + bagSize +
                ", findTargetDistance=" + findTargetDistance +
                ", gatherDistance=" + gatherDistance +
                ", putDistance=" + putDistance +
                ", perSecond=" + perSecond +
                ", env='" + env + '\'' +
                ", resource='" + resource + '\'' +
                '}';
    }
}
