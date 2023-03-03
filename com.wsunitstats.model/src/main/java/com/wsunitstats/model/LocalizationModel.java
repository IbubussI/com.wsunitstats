package com.wsunitstats.model;

import com.wsunitstats.model.submodel.LocalizationEntry;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;

import java.util.Map;

@Entity
public class LocalizationModel extends PersistentObject {
    @Column(unique = true)
    private String locale;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Map<String, LocalizationEntry> entries;

    /**
     * Tries to find localized value. Returns given key if value not found
     *
     * @param key   key to find value for
     * @param index index of value within the given key
     * @return localized value or given key if there are no values
     * for such a key or index is out of bounds
     */
    public String getValue(String key, int index) {
        LocalizationEntry entry = entries.get(key);
        if (entry == null || entry.getLocalizedValues().size() < index + 1) {
            return key;
        }
        return entry.getLocalizedValues().get(index);
    }

    public String getLocale() {
        return locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    public Map<String, LocalizationEntry> getEntries() {
        return entries;
    }

    public void setEntries(Map<String, LocalizationEntry> entries) {
        this.entries = entries;
    }

    @Override
    public String toString() {
        return "LocalizationModel{" +
                "locale='" + locale + '\'' +
                ", values=" + entries +
                '}';
    }
}
