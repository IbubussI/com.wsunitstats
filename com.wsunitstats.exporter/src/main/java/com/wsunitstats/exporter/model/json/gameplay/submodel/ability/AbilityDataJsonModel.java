package com.wsunitstats.exporter.model.json.gameplay.submodel.ability;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AbilityDataJsonModel {
    private Integer count;
    private String clearTasks;

    //Warrior speed increase duration
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
}
