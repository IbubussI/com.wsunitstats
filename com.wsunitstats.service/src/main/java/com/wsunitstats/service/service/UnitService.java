package com.wsunitstats.service.service;

import com.wsunitstats.model.UnitModel;

import java.util.List;

public interface UnitService {
    List<UnitModel> getUnitsAll(String sort, String sortDir, int page, int size);

    List<UnitModel> getUnitsByNames(List<String> names, String sort, String sortDir, int page, int size);

    List<UnitModel> getUnitsByNations(List<String> nations, String sort, String sortDir, int page, int size);

    List<UnitModel> getUnitsByGameIds(List<Integer> ids, String sort, String sortDir, int page, int size);

    /**
     * Set given units to repository.
     * Remove any previous data from units repository;
     */
    void setUnits(List<UnitModel> unitModels);
}
