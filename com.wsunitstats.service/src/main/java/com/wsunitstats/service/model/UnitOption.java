package com.wsunitstats.service.model;

/**
 * Holds data to fetch unit names for option autocomplete purposes
 */
public interface UnitOption {
    String getName();
    Integer getGameId();
    Integer getId();
    String getNation();
}
