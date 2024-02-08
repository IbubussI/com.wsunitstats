package com.wsunitstats.service.service;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.service.model.ResearchOption;

import java.util.List;

public interface ResearchService {
    List<ResearchModel> getResearchesAll(String sort, String sortDir, int page, int size);

    List<ResearchModel> getResearchesByNames(List<String> names, String sort, String sortDir, int page, int size);

    List<ResearchModel> getResearchesByGameIds(List<Integer> ids, String sort, String sortDir, int page, int size);

    List<ResearchModel> getResearchesByGameIds(List<Integer> ids);

    List<ResearchOption> getResearchOptions(String locale, String namePattern, List<Integer> gameIds,
                                            String sort, String sortDir, int page, int size);

    List<String> getColumnNames();

    /**
     * Set given researches to repository.
     * Remove any previous data from researches repository;
     */
    void setResearches(List<ResearchModel> researchModels);
}
