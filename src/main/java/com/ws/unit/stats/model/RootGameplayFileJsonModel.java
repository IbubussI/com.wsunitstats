package com.ws.unit.stats.model;

import java.util.List;
import java.util.Map;

public class RootGameplayFileJsonModel {
    private List<Object> build;
    private int defaultFormationInterval;
    private int defaultFormationType;
    private int fowCellSize;
    private int fowsCount;
    private Map<String, Object> researches;
    private ScenesJsonModel scenes;
    private Map<String, Object> scripts;
    private List<Object> springs;
    private Map<String, Object> upgradesScripts;
    private int version;

    @Override
    public String toString() {
        return "RootGameplayFileJsonModel{" +
                "build=" + build +
                ", defaultFormationInterval=" + defaultFormationInterval +
                ", defaultFormationType=" + defaultFormationType +
                ", fowCellSize=" + fowCellSize +
                ", fowsCount=" + fowsCount +
                ", researches=" + researches +
                ", scenes=" + scenes +
                ", scripts=" + scripts +
                ", springs=" + springs +
                ", upgradesScripts=" + upgradesScripts +
                ", version=" + version +
                '}';
    }
}
