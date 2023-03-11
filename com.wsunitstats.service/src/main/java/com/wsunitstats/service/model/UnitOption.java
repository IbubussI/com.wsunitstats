package com.wsunitstats.service.model;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Holds data to fetch unit names for option autocomplete purposes
 */
public interface UnitOption {
    @JsonProperty("name")
    String getEntries();
    Integer getId();
    String getNation();
}
