package com.wsunitstats.exporter.model.json.gameplay.submodel;

import java.util.List;

public class IncomeJsonModel {
    private Integer period;
    private List<Integer> value;

    public Integer getPeriod() {
        return period;
    }

    public void setPeriod(Integer period) {
        this.period = period;
    }

    public List<Integer> getValue() {
        return value;
    }

    public void setValue(List<Integer> value) {
        this.value = value;
    }

    @Override
    public String toString() {
        return "IncomeJsonModel{" +
                "period=" + period +
                ", value=" + value +
                '}';
    }
}
