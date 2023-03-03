package com.wsunitstats.exporter.model.localization;

import java.util.List;
import java.util.Map;

public class LocalizationFileModel {
    private String filename;
    private Map<String, List<String>> values;

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public Map<String, List<String>> getValues() {
        return values;
    }

    public void setValues(Map<String, List<String>> values) {
        this.values = values;
    }

    @Override
    public String toString() {
        return "LocalizationFileModel{" +
                "values=" + values +
                '}';
    }
}
