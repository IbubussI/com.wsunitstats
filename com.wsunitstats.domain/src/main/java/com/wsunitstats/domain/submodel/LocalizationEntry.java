package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;

import java.util.List;

@Entity
public class LocalizationEntry extends PersistentObject {
    @ElementCollection(fetch = FetchType.EAGER)
    @Column(length = 1000)
    private List<String> localizedValues;

    public List<String> getLocalizedValues() {
        return localizedValues;
    }

    public void setLocalizedValues(List<String> localizedValues) {
        this.localizedValues = localizedValues;
    }

    @Override
    public String toString() {
        return "LocalizationEntry{" +
                "localizedValues=" + localizedValues +
                '}';
    }
}
