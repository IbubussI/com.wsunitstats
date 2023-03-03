package com.wsunitstats.model;

import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;

import java.util.List;
import java.util.Map;

@Entity(name = "localization")
public class LocalizationModel extends PersistentObject {
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> nationNames;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> researchNames;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> researchTexts;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> unitNames;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> unitTexts;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> unitTagNames;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> unitSearchTagNames;
    @ElementCollection(fetch = FetchType.EAGER)
    private Map<Integer, String> envNames;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> envTagNames;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> envSearchTagNames;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> ageNames;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> resourceNames;

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

    public List<String> getUnitTagNames() {
        return unitTagNames;
    }

    public void setUnitTagNames(List<String> unitTagNames) {
        this.unitTagNames = unitTagNames;
    }

    public List<String> getUnitSearchTagNames() {
        return unitSearchTagNames;
    }

    public void setUnitSearchTagNames(List<String> unitSearchTagNames) {
        this.unitSearchTagNames = unitSearchTagNames;
    }

    public Map<Integer, String> getEnvNames() {
        return envNames;
    }

    public void setEnvNames(Map<Integer, String> envNames) {
        this.envNames = envNames;
    }

    public List<String> getEnvTagNames() {
        return envTagNames;
    }

    public void setEnvTagNames(List<String> envTagNames) {
        this.envTagNames = envTagNames;
    }

    public List<String> getEnvSearchTagNames() {
        return envSearchTagNames;
    }

    public void setEnvSearchTagNames(List<String> envSearchTagNames) {
        this.envSearchTagNames = envSearchTagNames;
    }

    public List<String> getAgeNames() {
        return ageNames;
    }

    public void setAgeNames(List<String> ageNames) {
        this.ageNames = ageNames;
    }

    public List<String> getResourceNames() {
        return resourceNames;
    }

    public void setResourceNames(List<String> resourceNames) {
        this.resourceNames = resourceNames;
    }

    @Override
    public String toString() {
        return "LocalizationModel{" +
                "nationNames=" + nationNames +
                ", researchNames=" + researchNames +
                ", researchTexts=" + researchTexts +
                ", unitNames=" + unitNames +
                ", unitTexts=" + unitTexts +
                ", unitTagNames=" + unitTagNames +
                ", unitSearchTagNames=" + unitSearchTagNames +
                ", envNames=" + envNames +
                ", envTagNames=" + envTagNames +
                ", envSearchTagNames=" + envSearchTagNames +
                ", ageNames=" + ageNames +
                ", resourceNames=" + resourceNames +
                '}';
    }
}
