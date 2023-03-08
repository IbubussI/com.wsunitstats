package com.wsunitstats.exporter.model.json.gameplay.submodel;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;
import java.util.Map;

@Getter
@Setter
@ToString
public class TurretJsonModel {
    private Integer defaultDirection;
    private Integer idleMode;
    private Map<String, Object> maxDeviation;
    @JsonInclude
    private List<Integer> parentPoint;
    private Integer rotationSpeed;
    private Integer scale;
    private List<Object> weapons;
}
