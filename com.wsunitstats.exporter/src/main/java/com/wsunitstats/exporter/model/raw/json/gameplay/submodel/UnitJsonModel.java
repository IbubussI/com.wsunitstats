package com.wsunitstats.exporter.model.raw.json.gameplay.submodel;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;
import java.util.Map;

public class UnitJsonModel {
    private List<Object> abilities;
    private Integer adjustToGround;
    private Map<String, Object> abilityOnAction;
    private Map<String, Object> agro;
    private List<AirfieldJsonModel> airfields;
    private Map<String, Object> airplane;
    @JsonProperty("armor_")
    private ArmorJsonModel armor;
    private Map<String, Object> attackReaction;
    private List<Object> building;
    private Boolean controllable;
    private List<Object> corpses;
    private List<Object> createEnvs;
    private Integer danceDuration;
    private List<GatherJsonModel> gather;
    private Map<String, Object> heal;
    private List<Object> healMeCost;
    private Integer health;
    private Integer hiddenInFows;
    private MovementJsonModel movement;
    private IncomeJsonModel income;
    private Integer lifeTime;
    private Integer openFows;
    private Boolean parentMustIdle;
    private Map<String, Object> passability;
    private List<Object> rally;
    private Integer regeneration;
    private Boolean receiveFriendlyDamage;
    @JsonProperty("scale_")
    private Integer scale;
    private Integer searchTags;
    private Integer size;
    private Integer storageMultiplier;
    private Map<String, Object> supply;
    private Integer tags;
    private Integer threat;
    private TransportingJsonModel transporting;
    private List<TurretJsonModel> turrets;
    private Integer viewRange;
    private Integer weaponUseOnDeath;
    private List<Object> weapons;
    private List<Object> work;

    public Map<String, Object> getAbilityOnAction() {
        return abilityOnAction;
    }

    public void setAbilityOnAction(Map<String, Object> abilityOnAction) {
        this.abilityOnAction = abilityOnAction;
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

    public List<AirfieldJsonModel> getAirfields() {
        return airfields;
    }

    public void setAirfields(List<AirfieldJsonModel> airfields) {
        this.airfields = airfields;
    }

    public Map<String, Object> getAirplane() {
        return airplane;
    }

    public void setAirplane(Map<String, Object> airplane) {
        this.airplane = airplane;
    }

    public ArmorJsonModel getArmor() {
        return armor;
    }

    public void setArmor(ArmorJsonModel armor) {
        this.armor = armor;
    }

    public Map<String, Object> getAttackReaction() {
        return attackReaction;
    }

    public void setAttackReaction(Map<String, Object> attackReaction) {
        this.attackReaction = attackReaction;
    }

    public List<Object> getBuilding() {
        return building;
    }

    public void setBuilding(List<Object> building) {
        this.building = building;
    }

    public Boolean getControllable() {
        return controllable;
    }

    public void setControllable(Boolean controllable) {
        this.controllable = controllable;
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

    public List<GatherJsonModel> getGather() {
        return gather;
    }

    public void setGather(List<GatherJsonModel> gather) {
        this.gather = gather;
    }

    public Map<String, Object> getHeal() {
        return heal;
    }

    public void setHeal(Map<String, Object> heal) {
        this.heal = heal;
    }

    public List<Object> getHealMeCost() {
        return healMeCost;
    }

    public void setHealMeCost(List<Object> healMeCost) {
        this.healMeCost = healMeCost;
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

    public MovementJsonModel getMovement() {
        return movement;
    }

    public void setMovement(MovementJsonModel movement) {
        this.movement = movement;
    }

    public IncomeJsonModel getIncome() {
        return income;
    }

    public void setIncome(IncomeJsonModel income) {
        this.income = income;
    }

    public Integer getLifeTime() {
        return lifeTime;
    }

    public void setLifeTime(Integer lifeTime) {
        this.lifeTime = lifeTime;
    }

    public Integer getOpenFows() {
        return openFows;
    }

    public void setOpenFows(Integer openFows) {
        this.openFows = openFows;
    }

    public Boolean getParentMustIdle() {
        return parentMustIdle;
    }

    public void setParentMustIdle(Boolean parentMustIdle) {
        this.parentMustIdle = parentMustIdle;
    }

    public Map<String, Object> getPassability() {
        return passability;
    }

    public void setPassability(Map<String, Object> passability) {
        this.passability = passability;
    }

    public List<Object> getRally() {
        return rally;
    }

    public void setRally(List<Object> rally) {
        this.rally = rally;
    }

    public Integer getRegeneration() {
        return regeneration;
    }

    public void setRegeneration(Integer regeneration) {
        this.regeneration = regeneration;
    }

    public Boolean getReceiveFriendlyDamage() {
        return receiveFriendlyDamage;
    }

    public void setReceiveFriendlyDamage(Boolean receiveFriendlyDamage) {
        this.receiveFriendlyDamage = receiveFriendlyDamage;
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

    public TransportingJsonModel getTransporting() {
        return transporting;
    }

    public void setTransporting(TransportingJsonModel transporting) {
        this.transporting = transporting;
    }

    public List<TurretJsonModel> getTurrets() {
        return turrets;
    }

    public void setTurrets(List<TurretJsonModel> turrets) {
        this.turrets = turrets;
    }

    public Integer getViewRange() {
        return viewRange;
    }

    public void setViewRange(Integer viewRange) {
        this.viewRange = viewRange;
    }

    public Integer getWeaponUseOnDeath() {
        return weaponUseOnDeath;
    }

    public void setWeaponUseOnDeath(Integer weaponUseOnDeath) {
        this.weaponUseOnDeath = weaponUseOnDeath;
    }

    public List<Object> getWeapons() {
        return weapons;
    }

    public void setWeapons(List<Object> weapons) {
        this.weapons = weapons;
    }

    public List<Object> getWork() {
        return work;
    }

    public void setWork(List<Object> work) {
        this.work = work;
    }

    @Override
    public String toString() {
        return "UnitJsonModel{" +
                "abilities=" + abilities +
                ", adjustToGround=" + adjustToGround +
                ", agro=" + agro +
                ", airfields=" + airfields +
                ", airplane=" + airplane +
                ", armor=" + armor +
                ", attackReaction=" + attackReaction +
                ", building=" + building +
                ", controllable=" + controllable +
                ", corpses=" + corpses +
                ", createEnvs=" + createEnvs +
                ", danceDuration=" + danceDuration +
                ", gather=" + gather +
                ", heal=" + heal +
                ", healMeCost=" + healMeCost +
                ", health=" + health +
                ", hiddenInFows=" + hiddenInFows +
                ", movement=" + movement +
                ", income=" + income +
                ", lifeTime=" + lifeTime +
                ", openFows=" + openFows +
                ", parentMustIdle=" + parentMustIdle +
                ", passability=" + passability +
                ", rally=" + rally +
                ", regeneration=" + regeneration +
                ", receiveFriendlyDamage=" + receiveFriendlyDamage +
                ", scale=" + scale +
                ", searchTags=" + searchTags +
                ", size=" + size +
                ", storageMultiplier=" + storageMultiplier +
                ", supply=" + supply +
                ", tags=" + tags +
                ", threat=" + threat +
                ", transporting=" + transporting +
                ", turrets=" + turrets +
                ", viewRange=" + viewRange +
                ", weaponUseOnDeath=" + weaponUseOnDeath +
                ", weapons=" + weapons +
                ", work=" + work +
                '}';
    }
}

