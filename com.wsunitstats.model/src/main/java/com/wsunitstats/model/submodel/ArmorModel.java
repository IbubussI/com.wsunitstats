package com.wsunitstats.model.submodel;

public class ArmorModel {
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

