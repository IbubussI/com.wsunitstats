package com.wsunitstats.exporter.model.json.gameplay.submodel;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Map;

@Getter
@Setter
@ToString
public class MovementJsonModel {
    private Integer collisionElasticity;
    private Integer collisionTags;
    private Map<String, Object> holdPassability;
    private Integer moveAngle;
    private Integer pathTracker;
    private Map<String, Object> randomMoveData;
    private Integer rotationSpeed;
    private Boolean runOnDamage;
    private Integer speed;
    private Integer weight;
}
