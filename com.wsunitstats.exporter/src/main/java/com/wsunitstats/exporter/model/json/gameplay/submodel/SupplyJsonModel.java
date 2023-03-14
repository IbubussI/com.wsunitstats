package com.wsunitstats.exporter.model.json.gameplay.submodel;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
public class SupplyJsonModel {
    private Integer cost;
    private Integer cost2;
    @JsonProperty("cost_")
    private List<Integer> costList;

    private Integer takes;
    private Integer takes2;
    @JsonProperty("takes_")
    private List<Integer> takesList;
}
