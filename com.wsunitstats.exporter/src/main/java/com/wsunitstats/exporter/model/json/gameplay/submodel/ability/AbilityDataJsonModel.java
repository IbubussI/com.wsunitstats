package com.wsunitstats.exporter.model.json.gameplay.submodel.ability;

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

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getClearTasks() {
        return clearTasks;
    }

    public void setClearTasks(String clearTasks) {
        this.clearTasks = clearTasks;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getResearch() {
        return research;
    }

    public void setResearch(Integer research) {
        this.research = research;
    }

    public Integer getUnit() {
        return unit;
    }

    public void setUnit(Integer unit) {
        this.unit = unit;
    }

    public Integer getCheckPassability() {
        return checkPassability;
    }

    public void setCheckPassability(Integer checkPassability) {
        this.checkPassability = checkPassability;
    }

    public Integer getClearLimitMin() {
        return clearLimitMin;
    }

    public void setClearLimitMin(Integer clearLimitMin) {
        this.clearLimitMin = clearLimitMin;
    }

    public Integer getClearUnits() {
        return clearUnits;
    }

    public void setClearUnits(Integer clearUnits) {
        this.clearUnits = clearUnits;
    }

    public Integer getLifeTime() {
        return lifeTime;
    }

    public void setLifeTime(Integer lifeTime) {
        this.lifeTime = lifeTime;
    }

    public Boolean getMustBeSent() {
        return mustBeSent;
    }

    public void setMustBeSent(Boolean mustBeSent) {
        this.mustBeSent = mustBeSent;
    }

    public Boolean getSendStrict() {
        return sendStrict;
    }

    public void setSendStrict(Boolean sendStrict) {
        this.sendStrict = sendStrict;
    }

    @Override
    public String toString() {
        return "AbilityDataJsonModel{" +
                "count=" + count +
                ", clearTasks='" + clearTasks + '\'' +
                ", duration=" + duration +
                ", id=" + id +
                ", research=" + research +
                ", unit=" + unit +
                ", checkPassability=" + checkPassability +
                ", clearLimitMin=" + clearLimitMin +
                ", clearUnits=" + clearUnits +
                ", lifeTime=" + lifeTime +
                ", mustBeSent=" + mustBeSent +
                ", sendStrict=" + sendStrict +
                '}';
    }
}
