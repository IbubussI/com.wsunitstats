package com.ws.unit.stats.model.raw.gameplay;

import java.util.List;
import java.util.Map;

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

    public List<BuildJsonModel> getBuild() {
        return build;
    }

    public void setBuild(List<BuildJsonModel> build) {
        this.build = build;
    }

    public Integer getDefaultFormationInterval() {
        return defaultFormationInterval;
    }

    public void setDefaultFormationInterval(Integer defaultFormationInterval) {
        this.defaultFormationInterval = defaultFormationInterval;
    }

    public Integer getDefaultFormationType() {
        return defaultFormationType;
    }

    public void setDefaultFormationType(Integer defaultFormationType) {
        this.defaultFormationType = defaultFormationType;
    }

    public Integer getFowCellSize() {
        return fowCellSize;
    }

    public void setFowCellSize(Integer fowCellSize) {
        this.fowCellSize = fowCellSize;
    }

    public Integer getFowsCount() {
        return fowsCount;
    }

    public void setFowsCount(Integer fowsCount) {
        this.fowsCount = fowsCount;
    }

    public Map<String, Object> getResearches() {
        return researches;
    }

    public void setResearches(Map<String, Object> researches) {
        this.researches = researches;
    }

    public ScenesJsonModel getScenes() {
        return scenes;
    }

    public void setScenes(ScenesJsonModel scenes) {
        this.scenes = scenes;
    }

    public Map<String, Object> getScripts() {
        return scripts;
    }

    public void setScripts(Map<String, Object> scripts) {
        this.scripts = scripts;
    }

    public List<Object> getSprings() {
        return springs;
    }

    public void setSprings(List<Object> springs) {
        this.springs = springs;
    }

    public Map<String, Object> getUpgradesScripts() {
        return upgradesScripts;
    }

    public void setUpgradesScripts(Map<String, Object> upgradesScripts) {
        this.upgradesScripts = upgradesScripts;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

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
