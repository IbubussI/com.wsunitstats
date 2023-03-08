package com.wsunitstats.exporter.model.json.gameplay.submodel;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
public class AirfieldJsonModel {
    @JsonInclude
    private List<Integer> decelerationPosition;
    private Integer height;
    @JsonInclude
    private List<Integer> landingPosition;
    private Boolean on;
    @JsonInclude
    private List<Integer> stopPosition;
}
