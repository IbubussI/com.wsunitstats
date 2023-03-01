package com.ws.unit.stats.model.mapped;

import java.util.List;
import java.util.Map;

public class LocalizationModel {
    private List<String> nationNames;
    private List<String> researchNames;
    private List<String> researchTexts;
    private List<String> unitNames;
    private List<String> unitTexts;
    private List<String> unitTagNames;
    private List<String> unitSearchTagNames;
    private Map<Integer, String> envNames;
    private List<String> envTagNames;
    private List<String> envSearchTagNames;
    private List<String> ageNames;
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
