package com.wsunitstats.service.service;

import com.wsunitstats.model.UnitModel;

import java.util.List;

public interface UnitService {
    List<UnitModel> getUnits();

    /**
     * Set given units to repository.
     * Remove any previous data from units repository;
     */
    void setUnits(List<UnitModel> unitModels);
}
