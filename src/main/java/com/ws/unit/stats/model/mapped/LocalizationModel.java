package com.ws.unit.stats.model.mapped;

import com.ws.unit.stats.model.mapped.submodel.NationNameModel;

import java.util.List;
import java.util.Map;

public class LocalizationModel {
    private List<Integer> unitNations;
    private List<NationNameModel> nationNames;
    private List<String> researchNames;
    private List<String> researchTexts;
    private List<String> unitNames;
    private List<String> unitTexts;
    private Map<Integer, String> envNames;
    private List<String> unitTags;
    private List<String> ageNames;
    private List<String> resourceNames;

    public List<Integer> getUnitNations() {
        return unitNations;
    }

    public void setUnitNations(List<Integer> unitNations) {
        this.unitNations = unitNations;
    }

    public List<NationNameModel> getNationNames() {
        return nationNames;
    }

    public void setNationNames(List<NationNameModel> nationNames) {
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

    public Map<Integer, String> getEnvNames() {
        return envNames;
    }

    public void setEnvNames(Map<Integer, String> envNames) {
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

    public List<String> getResourceNames() {
        return resourceNames;
    }

    public void setResourceNames(List<String> resourceNames) {
        this.resourceNames = resourceNames;
    }

    @Override
    public String toString() {
        return "LocalizationModel{" +
                "unitNations=" + unitNations +
                ", nationNames=" + nationNames +
                ", researchNames=" + researchNames +
                ", researchTexts=" + researchTexts +
                ", unitNames=" + unitNames +
                ", unitTexts=" + unitTexts +
                ", envNames=" + envNames +
                ", unitTags=" + unitTags +
                ", ageNames=" + ageNames +
                ", resourceNames=" + resourceNames +
                '}';
    }
}
