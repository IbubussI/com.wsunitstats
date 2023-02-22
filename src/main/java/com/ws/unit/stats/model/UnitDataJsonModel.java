package com.ws.unit.stats.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;
import java.util.Map;

public class UnitDataJsonModel {
    private List<Object> abilities;
    private Integer adjustToGround;
    private Map<String, Object> agro;
    private List<Object> airfields;
    private Map<String, Object> airplane;
    @JsonProperty("armor_")
    private Map<String, Object> armor;
    private List<Object> building;
    private Integer collisionElasticity;
    private Integer collisionTags;
    private Boolean controllable;
    private Map<String, Object> randomMoveData;
    private List<Object> corpses;
    private List<Object> createEnvs;
    private Integer danceDuration;
    private List<Object> gather;
    private Map<String, Object> heal;
    private List<Object> healMeCost;
    private Integer health;
    private Integer hiddenInFows;
    private Map<String, Object> holdPassability;
    private List<Object> income;
    private Integer incomePeriod;
    private Integer lifeTime;
    private Integer moveAngle;
    private Integer openFows;
    private Boolean parentMustIdle;
    private Map<String, Object> passability;
    private Integer pathTracker;
    private List<Object> rally;
    private Integer regeneration;
    private Boolean receiveFriendlyDamage;
    private Integer rotationSpeed;
    private Boolean runOnDamage;
    @JsonProperty("scale_")
    private Integer scale;
    private Integer searchTags;
    private Integer size;
    private Integer speed;
    private Integer storageMultiplier;
    private Map<String, Object> supply;
    private Integer tags;
    private Integer threat;
    private Map<String, Object> transporting;

    private List<Object> turrets;
    private Integer viewRange;
    private Integer weaponUseOnDeath;
    private List<Object> weapons;
    private Integer weight;
    private List<Object> work;

    public List<Object> getAirfields() {
        return airfields;
    }

    public void setAirfields(List<Object> airfields) {
        this.airfields = airfields;
    }

    public Integer getPathTracker() {
        return pathTracker;
    }

    public void setPathTracker(Integer pathTracker) {
        this.pathTracker = pathTracker;
    }

    public Integer getCollisionElasticity() {
        return collisionElasticity;
    }

    public void setCollisionElasticity(Integer collisionElasticity) {
        this.collisionElasticity = collisionElasticity;
    }

    public Integer getWeaponUseOnDeath() {
        return weaponUseOnDeath;
    }

    public void setWeaponUseOnDeath(Integer weaponUseOnDeath) {
        this.weaponUseOnDeath = weaponUseOnDeath;
    }

    public Boolean isParentMustIdle() {
        return parentMustIdle;
    }

    public void setParentMustIdle(Boolean parentMustIdle) {
        this.parentMustIdle = parentMustIdle;
    }

    public List<Object> getIncome() {
        return income;
    }

    public void setIncome(List<Object> income) {
        this.income = income;
    }

    public Integer getIncomePeriod() {
        return incomePeriod;
    }

    public void setIncomePeriod(Integer incomePeriod) {
        this.incomePeriod = incomePeriod;
    }

    public Boolean isControllable() {
        return controllable;
    }

    public void setControllable(Boolean controllable) {
        this.controllable = controllable;
    }

    public Map<String, Object> getRandomMoveData() {
        return randomMoveData;
    }

    public void setRandomMoveData(Map<String, Object> randomMoveData) {
        this.randomMoveData = randomMoveData;
    }

    public Integer getLifeTime() {
        return lifeTime;
    }

    public void setLifeTime(Integer lifetime) {
        this.lifeTime = lifetime;
    }

    public List<Object> getRally() {
        return rally;
    }

    public void setRally(List<Object> rally) {
        this.rally = rally;
    }

    public Boolean isReceiveFriendlyDamage() {
        return receiveFriendlyDamage;
    }

    public void setReceiveFriendlyDamage(Boolean receiveFriendlyDamage) {
        this.receiveFriendlyDamage = receiveFriendlyDamage;
    }

    public Boolean isRunOnDamage() {
        return runOnDamage;
    }

    public void setRunOnDamage(Boolean runOnDamage) {
        this.runOnDamage = runOnDamage;
    }

    public List<Object> getHealMeCost() {
        return healMeCost;
    }

    public void setHealMeCost(List<Object> healMeCost) {
        this.healMeCost = healMeCost;
    }

    public List<Object> getAbilities() {
        return abilities;
    }

    public void setAbilities(List<Object> abilities) {
        this.abilities = abilities;
    }

    public Integer getAdjustToGround() {
        return adjustToGround;
    }

    public void setAdjustToGround(Integer adjustToGround) {
        this.adjustToGround = adjustToGround;
    }

    public Map<String, Object> getAgro() {
        return agro;
    }

    public void setAgro(Map<String, Object> agro) {
        this.agro = agro;
    }

    public Map<String, Object> getAirplane() {
        return airplane;
    }

    public void setAirplane(Map<String, Object> airplane) {
        this.airplane = airplane;
    }

    public Map<String, Object> getArmor() {
        return armor;
    }

    public void setArmor(Map<String, Object> armor) {
        this.armor = armor;
    }

    public List<Object> getBuilding() {
        return building;
    }

    public void setBuilding(List<Object> building) {
        this.building = building;
    }

    public Integer getCollisionTags() {
        return collisionTags;
    }

    public void setCollisionTags(Integer collisionTags) {
        this.collisionTags = collisionTags;
    }

    public List<Object> getCorpses() {
        return corpses;
    }

    public void setCorpses(List<Object> corpses) {
        this.corpses = corpses;
    }

    public List<Object> getCreateEnvs() {
        return createEnvs;
    }

    public void setCreateEnvs(List<Object> createEnvs) {
        this.createEnvs = createEnvs;
    }

    public Integer getDanceDuration() {
        return danceDuration;
    }

    public void setDanceDuration(Integer danceDuration) {
        this.danceDuration = danceDuration;
    }

    public List<Object> getGather() {
        return gather;
    }

    public void setGather(List<Object> gather) {
        this.gather = gather;
    }

    public Map<String, Object> getHeal() {
        return heal;
    }

    public void setHeal(Map<String, Object> heal) {
        this.heal = heal;
    }

    public Integer getHealth() {
        return health;
    }

    public void setHealth(Integer health) {
        this.health = health;
    }

    public Integer getHiddenInFows() {
        return hiddenInFows;
    }

    public void setHiddenInFows(Integer hiddenInFows) {
        this.hiddenInFows = hiddenInFows;
    }

    public Map<String, Object> getHoldPassability() {
        return holdPassability;
    }

    public void setHoldPassability(Map<String, Object> holdPassability) {
        this.holdPassability = holdPassability;
    }

    public Integer getMoveAngle() {
        return moveAngle;
    }

    public void setMoveAngle(Integer moveAngle) {
        this.moveAngle = moveAngle;
    }

    public Integer getOpenFows() {
        return openFows;
    }

    public void setOpenFows(Integer openFows) {
        this.openFows = openFows;
    }

    public Map<String, Object> getPassability() {
        return passability;
    }

    public void setPassability(Map<String, Object> passability) {
        this.passability = passability;
    }

    public Integer getRegeneration() {
        return regeneration;
    }

    public void setRegeneration(Integer regeneration) {
        this.regeneration = regeneration;
    }

    public Integer getRotationSpeed() {
        return rotationSpeed;
    }

    public void setRotationSpeed(Integer rotationSpeed) {
        this.rotationSpeed = rotationSpeed;
    }

    public Integer getScale() {
        return scale;
    }

    public void setScale(Integer scale) {
        this.scale = scale;
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

    public Integer getSpeed() {
        return speed;
    }

    public void setSpeed(Integer speed) {
        this.speed = speed;
    }

    public Integer getStorageMultiplier() {
        return storageMultiplier;
    }

    public void setStorageMultiplier(Integer storageMultiplier) {
        this.storageMultiplier = storageMultiplier;
    }

    public Map<String, Object> getSupply() {
        return supply;
    }

    public void setSupply(Map<String, Object> supply) {
        this.supply = supply;
    }

    public Integer getTags() {
        return tags;
    }

    public void setTags(Integer tags) {
        this.tags = tags;
    }

    public Integer getThreat() {
        return threat;
    }

    public void setThreat(Integer threat) {
        this.threat = threat;
    }

    public Map<String, Object> getTransporting() {
        return transporting;
    }

    public void setTransporting(Map<String, Object> transporting) {
        this.transporting = transporting;
    }

    public List<Object> getTurrets() {
        return turrets;
    }

    public void setTurrets(List<Object> turrets) {
        this.turrets = turrets;
    }

    public Integer getViewRange() {
        return viewRange;
    }

    public void setViewRange(Integer viewRange) {
        this.viewRange = viewRange;
    }

    public List<Object> getWeapons() {
        return weapons;
    }

    public void setWeapons(List<Object> weapons) {
        this.weapons = weapons;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public List<Object> getWork() {
        return work;
    }

    public void setWork(List<Object> work) {
        this.work = work;
    }

    @Override
    public String toString() {
        return "UnitDataJsonModel{" +
                "abilities=" + abilities +
                ", adjustToGround=" + adjustToGround +
                ", agro=" + agro +
                ", airfields=" + airfields +
                ", airplane=" + airplane +
                ", armor=" + armor +
                ", building=" + building +
                ", collisionElasticity=" + collisionElasticity +
                ", collisionTags=" + collisionTags +
                ", controllable=" + controllable +
                ", randomMoveData=" + randomMoveData +
                ", corpses=" + corpses +
                ", createEnvs=" + createEnvs +
                ", danceDuration=" + danceDuration +
                ", gather=" + gather +
                ", heal=" + heal +
                ", healMeCost=" + healMeCost +
                ", health=" + health +
                ", hiddenInFows=" + hiddenInFows +
                ", holdPassability=" + holdPassability +
                ", income=" + income +
                ", incomePeriod=" + incomePeriod +
                ", lifeTime=" + lifeTime +
                ", moveAngle=" + moveAngle +
                ", openFows=" + openFows +
                ", parentMustIdle=" + parentMustIdle +
                ", passability=" + passability +
                ", pathTracker=" + pathTracker +
                ", rally=" + rally +
                ", regeneration=" + regeneration +
                ", receiveFriendlyDamage=" + receiveFriendlyDamage +
                ", rotationSpeed=" + rotationSpeed +
                ", runOnDamage=" + runOnDamage +
                ", scale=" + scale +
                ", searchTags=" + searchTags +
                ", size=" + size +
                ", speed=" + speed +
                ", storageMultiplier=" + storageMultiplier +
                ", supply=" + supply +
                ", tags=" + tags +
                ", threat=" + threat +
                ", transporting=" + transporting +
                ", turrets=" + turrets +
                ", viewRange=" + viewRange +
                ", weaponUseOnDeath=" + weaponUseOnDeath +
                ", weapons=" + weapons +
                ", weight=" + weight +
                ", work=" + work +
                '}';
    }
}
