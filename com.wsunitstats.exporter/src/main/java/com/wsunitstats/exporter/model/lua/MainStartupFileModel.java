package com.wsunitstats.exporter.model.lua;

import java.util.List;

public class MainStartupFileModel {
    public static final List<String> ARRAY_NAMES = List.of(
            "resourceNames",
            "envTagNames",
            "envSearchTagNames",
            "unitTagNames",
            "unitSearchTagNames",
            "projectileNames"
    );

    private List<String> resourceNames;
    private List<String> envTagNames;
    private List<String> envSearchTagNames;
    private List<String> unitTagNames;
    private List<String> unitSearchTagNames;
    private List<String> projectileNames; // Not localized

    public void setAll(List<List<String>> lists) {
        if (lists.size() == 6) {
            resourceNames = lists.get(0);
            envTagNames = lists.get(1);
            envSearchTagNames = lists.get(2);
            unitTagNames = lists.get(3);
            unitSearchTagNames = lists.get(4);
            projectileNames = lists.get(5);
        }
    }

    public List<String> getResourceNames() {
        return resourceNames;
    }

    public void setResourceNames(List<String> resourceNames) {
        this.resourceNames = resourceNames;
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

    public List<String> getProjectileNames() {
        return projectileNames;
    }

    public void setProjectileNames(List<String> projectileNames) {
        this.projectileNames = projectileNames;
    }

    @Override
    public String toString() {
        return "MainStartupFileModel{" +
                "resourceNames=" + resourceNames +
                ", envTagNames=" + envTagNames +
                ", envSearchTagNames=" + envSearchTagNames +
                ", unitTagNames=" + unitTagNames +
                ", unitSearchTagNames=" + unitSearchTagNames +
                ", projectileNames=" + projectileNames +
                '}';
    }
}
