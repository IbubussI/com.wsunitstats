package com.wsunitstats.domain;

import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.apache.commons.lang3.StringUtils;

import java.util.Map;

@Entity(name = "localization")
@Getter
@Setter
@ToString
public class LocalizationModel extends PersistentObject {
    @Column(unique = true)
    private String locale;
    @ElementCollection(fetch = FetchType.EAGER)
    @Column(length=1000)
    private Map<String, String> entries;

    /**
     * Tries to find localized value
     *
     * @param key   key to find value for
     * @return localized value or empty string if there are no values for such a key
     */
    public String getValue(String key) {
        String entry = entries.get(key);
        return entry != null ? entry : StringUtils.EMPTY;
    }
}
