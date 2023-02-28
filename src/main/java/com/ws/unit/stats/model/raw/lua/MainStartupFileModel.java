package com.ws.unit.stats.model.raw.lua;

import java.util.List;

public class MainStartupFileModel {
    public static final List<String> ARRAY_NAMES = List.of("resourceNames");

    private List<String> resourceNames;

    public void setAll(List<List<String>> lists) {
        if (lists.size() == 1) {
            resourceNames = lists.get(0);
        }
    }

    public List<String> getResourceNames() {
        return resourceNames;
    }

    public void setResourceNames(List<String> resourceNames) {
        this.resourceNames = resourceNames;
    }

    @Override
    public String toString() {
        return "MainStartupFileModel{" +
                "resourceNames=" + resourceNames +
                '}';
    }
}
