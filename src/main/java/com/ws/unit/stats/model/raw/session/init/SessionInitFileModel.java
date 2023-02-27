package com.ws.unit.stats.model.raw.session.init;

import java.util.List;

public class SessionInitFileModel {
    public static final List<String> ARRAY_NAMES = List.of("unitNations",
            "nationNames",
            "researchNames",
            "researchTexts",
            "unitNames",
            "unitTexts",
            "envNames",
            "unitTags",
            "ageNames");

    private List<String> unitNations;
    private List<String> nationNames;
    private List<String> researchNames;
    private List<String> researchTexts;
    private List<String> unitNames;
    private List<String> unitTexts;
    private List<String> envNames;
    private List<String> unitTags;
    private List<String> ageNames;

    public void setAll(List<List<String>> lists) {
        if (lists.size() == 9) {
            unitNations = lists.get(0);
            nationNames = lists.get(1);
            researchNames = lists.get(2);
            researchTexts = lists.get(3);
            unitNames = lists.get(4);
            unitTexts = lists.get(5);
            envNames = lists.get(6);
            unitTags = lists.get(7);
            ageNames = lists.get(8);
        }
    }

    public List<String> getUnitNations() {
        return unitNations;
    }

    public void setUnitNations(List<String> unitNations) {
        this.unitNations = unitNations;
    }

    public List<String> getNationNames() {
        return nationNames;
    }

    public void setNationNames(List<String> nationNames) {
        this.nationNames = nationNames;
    }

    public List<String> getResearchNames() {
        return researchNames;
    }

    public void setResearchNames(List<String> researchNames) {
        this.researchNames = researchNames;
    }

    public List<String> getResearchTexts() {
        return researchTexts;
    }

    public void setResearchTexts(List<String> researchTexts) {
        this.researchTexts = researchTexts;
    }

    public List<String> getUnitNames() {
        return unitNames;
    }

    public void setUnitNames(List<String> unitNames) {
        this.unitNames = unitNames;
    }

    public List<String> getUnitTexts() {
        return unitTexts;
    }

    public void setUnitTexts(List<String> unitTexts) {
        this.unitTexts = unitTexts;
    }

    public List<String> getEnvNames() {
        return envNames;
    }

    public void setEnvNames(List<String> envNames) {
        this.envNames = envNames;
    }

    public List<String> getUnitTags() {
        return unitTags;
    }

    public void setUnitTags(List<String> unitTags) {
        this.unitTags = unitTags;
    }

    public List<String> getAgeNames() {
        return ageNames;
    }

    public void setAgeNames(List<String> ageNames) {
        this.ageNames = ageNames;
    }

    @Override
    public String toString() {
        return "SessionInitModel{" +
                "unitNations=" + unitNations +
                ", nationNames=" + nationNames +
                ", researchNames=" + researchNames +
                ", researchTexts=" + researchTexts +
                ", unitNames=" + unitNames +
                ", unitTexts=" + unitTexts +
                ", envNames=" + envNames +
                ", unitTags=" + unitTags +
                ", ageNames=" + ageNames +
                '}';
    }
}
