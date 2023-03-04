package com.wsunitstats.domain.submodel;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

@Embeddable
public class ArmorModel {
    @Column(name="value_")
    private Double value;
    private Integer probability;

    public Double getValue() {
        return value;
    }

    public void setValue(Double value) {
        this.value = value;
    }

    public Integer getProbability() {
        return probability;
    }

    public void setProbability(Integer probability) {
        this.probability = probability;
    }

    @Override
    public String toString() {
        return "ArmorEntry{" +
                "value=" + value +
                ", probability=" + probability +
                '}';
    }
}

