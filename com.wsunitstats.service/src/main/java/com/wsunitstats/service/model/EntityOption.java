package com.wsunitstats.service.model;

/**
 * Holds data to fetch unit names for option autocomplete purposes
 */
public interface EntityOption {
    String getName();
    Integer getGameId();
    Integer getId();
    String getNation();
    String getImage();
}
