package com.wsunitstats.service.service.impl;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.service.model.ResearchOption;
import com.wsunitstats.service.repository.ResearchRepository;
import com.wsunitstats.service.service.ResearchService;
import com.wsunitstats.service.service.UtilsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResearchServiceImpl implements ResearchService {
    @Autowired
    private ResearchRepository researchRepository;
    @Autowired
    private UtilsService utilsService;

    @Override
    public List<ResearchModel> getResearchesAll(String sort, String sortDir, int page, int size) {
        return researchRepository.findAll(utilsService.getPageable(sort, sortDir, page, size)).getContent();
    }

    @Override
    public List<ResearchModel> getResearchesByNames(List<String> names, String sort, String sortDir, int page, int size) {
        return researchRepository.findByNameIn(names, utilsService.getPageable(sort, sortDir, page, size));
    }

    @Override
    public List<ResearchModel> getResearchesByGameIds(List<Integer> ids, String sort, String sortDir, int page, int size) {
        return researchRepository.findByGameIdIn(ids, utilsService.getPageable(sort, sortDir, page, size));
    }

    @Override
    public List<ResearchOption> getResearchOptionsByName(String locale, String namePattern, int size) {
        return researchRepository.findByPatternContaining(locale, "<*upgrade%", String.format("%%%s%%", namePattern), size);
    }

    @Override
    public List<String> getColumnNames() {
        return researchRepository.getColumnNames();
    }

    @Override
    public void setResearches(List<ResearchModel> researchModels) {
        researchRepository.deleteAll();
        researchRepository.saveAll(researchModels);
    }
}
