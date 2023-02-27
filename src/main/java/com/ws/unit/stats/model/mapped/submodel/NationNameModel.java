package com.ws.unit.stats.model.mapped.submodel;

public class NationNameModel {
    private String ir1;
    private String ir2;

    public String getIr1() {
        return ir1;
    }

    public void setIr1(String ir1) {
        this.ir1 = ir1;
    }

    public String getIr2() {
        return ir2;
    }

    public void setIr2(String ir2) {
        this.ir2 = ir2;
    }

    @Override
    public String toString() {
        return "NationNameModel{" +
                "ir1='" + ir1 + '\'' +
                ", ir2='" + ir2 + '\'' +
                '}';
    }
}
