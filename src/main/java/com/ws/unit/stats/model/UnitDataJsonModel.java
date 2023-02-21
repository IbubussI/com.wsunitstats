package com.ws.unit.stats.model;

import com.google.gson.annotations.SerializedName;

import java.util.List;
import java.util.Map;

public class UnitDataJsonModel {
    @Override
    public String toString() {
        return "UnitData{" +
                "abilities=" + abilities +
                ", adjustToGround=" + adjustToGround +
                ", agro=" + agro +
                ", airplane=" + airplane +
                ", armor=" + armor +
                ", building=" + building +
                ", collisionTags=" + collisionTags +
                ", corpses=" + corpses +
                ", createEnvs=" + createEnvs +
                ", danceDuration=" + danceDuration +
                ", gather=" + gather +
                ", heal=" + heal +
                ", health=" + health +
                ", hiddenInFows=" + hiddenInFows +
                ", holdPassability=" + holdPassability +
                ", moveAngle=" + moveAngle +
                ", openFows=" + openFows +
                ", passability=" + passability +
                ", regeneration=" + regeneration +
                ", rotationSpeed=" + rotationSpeed +
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
                ", weapons=" + weapons +
                ", weight=" + weight +
                ", work=" + work +
                '}';
    }

    private List<Object> abilities;
    private int adjustToGround;
    private Map<String, Object> agro;
    private Map<String, Object> airplane;
    @SerializedName("armor_")
    private Map<String, Object> armor;
    private List<Object> building;
    private int collisionTags;
    private List<Object> corpses;
    private List<Object> createEnvs;
    private int danceDuration;
    private List<Object> gather;
    private Map<String, Object> heal;
    private int health;
    private int hiddenInFows;
    private Map<String, Object> holdPassability;
    private int moveAngle;
    private int openFows;
    private Map<String, Object> passability;
    private int regeneration;
    private int rotationSpeed;
    @SerializedName("scale_")
    private int scale;
    private int searchTags;
    private int size;
    private int speed;
    private int storageMultiplier;
    private Map<String, Object> supply;
    private int tags;
    private int threat;
    private Map<String, Object> transporting;
    private List<Object> turrets;
    private int viewRange;
    private List<Object> weapons;
    private int weight;
    private List<Object> work;
}
