package com.wsunitstats.exporter.model.json.gameplay.submodel.ability;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
public class AbilityDataJsonModel {
    private Integer count;
    private String clearTasks;

    //Warrior speed increase, heavy tanks decrease (when breaking forest) duration
    private Integer duration;

    //One of next ids is present
    private Integer id;         //env id (for wheat)
    private Integer research;   //research id
    private Integer unit;       //unit id

    //Wall-specific
    private Integer checkPassability;
    private Integer clearLimitMin;
    private Integer clearUnits;

    //LimitedLife (sakura blossom, durga fury etc)
    private Integer lifeTime;
    private Boolean mustBeSent;
    private Boolean sendStrict;

    //Damage (heavy tanks to trees)
    private Integer area;
    private List<List<Integer>> damages;
    private Integer envDamage;
    private Long envsAffected;
    @JsonProperty("radius_")
    private Integer radius;
}
