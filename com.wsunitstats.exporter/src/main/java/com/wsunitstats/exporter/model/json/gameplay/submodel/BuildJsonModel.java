package com.wsunitstats.exporter.model.json.gameplay.submodel;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;
import java.util.Map;

@Getter
@Setter
@ToString
public class BuildJsonModel {
    private Boolean available;
    private Integer collision;
    private List<Integer> costBuilding;
    private List<Integer> costInit;
    private Integer health;
    private Integer locationEnvTags;
    private Object requirements;
    private Integer unit;
    private Boolean wall;
    private Map<String, Object> wallData;
}
