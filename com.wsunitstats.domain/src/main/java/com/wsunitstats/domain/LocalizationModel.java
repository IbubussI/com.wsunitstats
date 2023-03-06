package com.wsunitstats.domain;

import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;

import java.util.Map;

@Entity
public class LocalizationModel extends PersistentObject {
    @Column(unique = true)
    private String locale;
    @ElementCollection(fetch = FetchType.EAGER)
    @Column(length=1000)
    private Map<String, String> entries;

    /**
     * Tries to find localized value. Returns given key if value not found
     *
     * @param key   key to find value for
     * @return localized value or given key if there are no values for such a key
     */
    public String getValue(String key) {
        String entry = entries.get(key);
        return entry != null ? entry : key;
    }

    public String getLocale() {
        return locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    public Map<String, String> getEntries() {
        return entries;
    }

    public void setEntries(Map<String, String> entries) {
        this.entries = entries;
    }

    @Override
    public String toString() {
        return "LocalizationModel{" +
                "locale='" + locale + '\'' +
                ", entries=" + entries +
                '}';
    }
}
