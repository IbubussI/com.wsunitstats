package com.wsunitstats.exporter.model.json.gameplay.submodel;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class GatherJsonModel {
    private Integer angle;
    private Integer bagsize;
    private Integer envtags;
    private Integer findtargetdistance;
    private Integer gatherdistance;
    private Integer pertick;
    private Integer putdistance;
    private Integer resource;
    private Integer storagetags;
    private Integer unitTags;
}