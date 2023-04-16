package com.wsunitstats.exporter.model.json.gameplay;

import com.wsunitstats.exporter.model.json.gameplay.submodel.BuildJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ScenesJsonModel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;
import java.util.Map;

@Getter
@Setter
@ToString
public class GameplayFileJsonModel {
    private List<BuildJsonModel> build;
    private Integer defaultFormationInterval;
    private Integer defaultFormationType;
    private Integer fowCellSize;
    private Integer fowsCount;
    private Map<String, Object> researches;
    private ScenesJsonModel scenes;
    private Map<String, Object> scripts;
    private List<Object> springs;
    private Map<String, Object> upgradesScripts;
    private Integer version;
}
