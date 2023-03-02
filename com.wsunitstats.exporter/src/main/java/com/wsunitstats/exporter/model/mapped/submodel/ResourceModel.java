package com.wsunitstats.exporter.model.mapped.submodel;

public class ResourceModel {
    private String resource;
    private int value;

    public String getResource() {
        return resource;
    }

    public void setResource(String resource) {
        this.resource = resource;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    @Override
    public String toString() {
        return "ResourceModel{" +
                "resource='" + resource + '\'' +
                ", value=" + value +
                '}';
    }
}
