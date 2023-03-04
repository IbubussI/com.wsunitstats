package com.wsunitstats.domain.submodel;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

@Embeddable
public class ResourceModel {
    private String resource;
    @Column(name="value_")
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
