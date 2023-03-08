package com.wsunitstats.exporter.model.json.gameplay.submodel.work;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
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
    @Getter(AccessLevel.NONE)
    private Boolean finalB;
    private Boolean enabled;

    public Boolean getFinal() {
        return finalB;
    }

    public void setFinal(Boolean finalB) {
        this.finalB = finalB;
    }
}
