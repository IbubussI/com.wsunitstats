package com.wsunitstats.service.service;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.service.model.NationOption;
import com.wsunitstats.service.model.TagOption;
import com.wsunitstats.service.model.UnitOption;

import java.util.List;

public interface UnitService {
    List<UnitModel> getUnitsAll(String sort, String sortDir, int page, int size);

    List<UnitModel> getUnitsByNames(List<String> names, String sort, String sortDir, int page, int size);

    List<UnitModel> getUnitsByNations(List<String> nations, String sort, String sortDir, int page, int size);

    List<UnitModel> getUnitsByIds(List<Long> ids, String sort, String sortDir, int page, int size);

    List<UnitModel> getUnitsByGameIds(List<Integer> ids, String sort, String sortDir, int page, int size);

    void applyResearches(List<UnitModel> units, List<ResearchModel> researches);

    /**
     * Returns localized options
     */
    List<UnitOption> getUnitOptions(String locale, String namePattern, List<Integer> gameIds, List<Integer> nations,
                                    List<Integer> unitTagIds, List<Integer> searchTagIds,
                                    String sort, String sortDir, int page, int size);

    List<NationOption> getNationOptions();

    List<TagOption> getUnitTagOptions();

    List<TagOption> getSearchTagOptions();

    List<String> getColumnNames();

    /**
     * Set given units to repository.
     * Remove any previous data from units repository;
     */
    void setUnits(List<UnitModel> unitModels);
}
