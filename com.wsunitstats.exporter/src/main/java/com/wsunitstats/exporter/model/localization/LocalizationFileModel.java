package com.wsunitstats.exporter.model.localization;

import java.util.List;
import java.util.Map;

public class LocalizationFileModel {
    private Map<String, List<String>> values;

    public List<String> getValues(String key) {
        return values.get(key);
    }

    /**
     * Tries to find localized value. Returns given key if value not found
     *
     * @param key   key to find value for
     * @param index index of value within the given key
     * @return localized value or given key if there are no values
     * for such a key or index is out of bounds
     */
    public String getValue(String key, int index) {
        List<String> keyValues = values.get(key);
        if (keyValues == null || keyValues.size() < index + 1) {
            return key;
        }
        return keyValues.get(index);
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
