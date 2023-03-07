package com.wsunitstats.exporter.model.json.gameplay.submodel.work;
import java.util.List;

public class WorkJsonModel {
    private Integer ability;
    private Integer maketime;
    // order unit cost
    private List<Integer> costOrder;
    // start research cost
    private List<Integer> costProcess;
    // only for "Flammenwerfer"
    private List<Integer> costStart;
    private WorkReserveJsonModel reserve;

    //Wonder-specific and disabled countries
    private Boolean finalB;
    private Boolean enabled;

    public Integer getAbility() {
        return ability;
    }

    public void setAbility(Integer ability) {
        this.ability = ability;
    }

    public Integer getMaketime() {
        return maketime;
    }

    public void setMaketime(Integer maketime) {
        this.maketime = maketime;
    }

    public List<Integer> getCostOrder() {
        return costOrder;
    }

    public void setCostOrder(List<Integer> costOrder) {
        this.costOrder = costOrder;
    }

    public List<Integer> getCostProcess() {
        return costProcess;
    }

    public void setCostProcess(List<Integer> costProcess) {
        this.costProcess = costProcess;
    }

    public List<Integer> getCostStart() {
        return costStart;
    }

    public void setCostStart(List<Integer> costStart) {
        this.costStart = costStart;
    }

    public WorkReserveJsonModel getReserve() {
        return reserve;
    }

    public void setReserve(WorkReserveJsonModel reserve) {
        this.reserve = reserve;
    }

    public Boolean getFinal() {
        return finalB;
    }

    public void setFinal(Boolean finalB) {
        this.finalB = finalB;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
}
