package com.wsunitstats.model;

import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;

import java.util.List;
import java.util.Map;

@Entity
public class LocalizationModel extends PersistentObject {
    @Column(unique = true)
    private String locale;
    @ElementCollection(fetch = FetchType.EAGER)
    @Column(name="values_", columnDefinition = "varbinary(1000)")
    private Map<String, List<String>> values;

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

    public String getLocale() {
        return locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    public Map<String, List<String>> getValues() {
        return values;
    }

    public void setValues(Map<String, List<String>> values) {
        this.values = values;
    }

    @Override
    public String toString() {
        return "LocalizationModel{" +
                "locale='" + locale + '\'' +
                ", values=" + values +
                '}';
    }
}
