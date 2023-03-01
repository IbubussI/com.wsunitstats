package com.wsunitstats.exporter.model.raw.json.gameplay.submodel;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;
import java.util.Map;

public class EnvJsonModel {
    private List<Object> corpses;
    private String createTag;
    private String envAfterDie;
    @JsonProperty("gatherk_")
    private Integer gatherk;
    private Integer health;
    private Integer lifeTime;
    private Map<String, Object> passability;
    private Integer searchTags;
    private Integer size;
    private Integer tags;
    private Boolean tickable;

    public List<Object> getCorpses() {
        return corpses;
    }

    public void setCorpses(List<Object> corpses) {
        this.corpses = corpses;
    }

    public String getCreateTag() {
        return createTag;
    }

    public void setCreateTag(String createTag) {
        this.createTag = createTag;
    }

    public String getEnvAfterDie() {
        return envAfterDie;
    }

    public void setEnvAfterDie(String envAfterDie) {
        this.envAfterDie = envAfterDie;
    }

    public Integer getGatherk() {
        return gatherk;
    }

    public void setGatherk(Integer gatherk) {
        this.gatherk = gatherk;
    }

    public Integer getHealth() {
        return health;
    }

    public void setHealth(Integer health) {
        this.health = health;
    }

    public Integer getLifeTime() {
        return lifeTime;
    }

    public void setLifeTime(Integer lifeTime) {
        this.lifeTime = lifeTime;
    }

    public Map<String, Object> getPassability() {
        return passability;
    }

    public void setPassability(Map<String, Object> passability) {
        this.passability = passability;
    }

    public Integer getSearchTags() {
        return searchTags;
    }

    public void setSearchTags(Integer searchTags) {
        this.searchTags = searchTags;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getTags() {
        return tags;
    }

    public void setTags(Integer tags) {
        this.tags = tags;
    }

    public Boolean getTickable() {
        return tickable;
    }

    public void setTickable(Boolean tickable) {
        this.tickable = tickable;
    }

    @Override
    public String toString() {
        return "EnvJsonModel{" +
                "corpses=" + corpses +
                ", createTag='" + createTag + '\'' +
                ", envAfterDie='" + envAfterDie + '\'' +
                ", gatherk=" + gatherk +
                ", health=" + health +
                ", lifeTime=" + lifeTime +
                ", passability=" + passability +
                ", searchTags=" + searchTags +
                ", size=" + size +
                ", tags=" + tags +
                ", tickable=" + tickable +
                '}';
    }
}
