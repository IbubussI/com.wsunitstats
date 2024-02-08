package com.wsunitstats.service.service.impl;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.service.model.NationOption;
import com.wsunitstats.service.model.TagOption;
import com.wsunitstats.service.model.UnitOption;
import com.wsunitstats.service.repository.UnitRepository;
import com.wsunitstats.service.service.UnitMutatorService;
import com.wsunitstats.service.service.UnitService;
import com.wsunitstats.service.service.UtilsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static com.wsunitstats.utils.Constants.TagGroupName.UNIT_SEARCH_TAGS;
import static com.wsunitstats.utils.Constants.TagGroupName.UNIT_TAGS;

@Service
public class UnitServiceImpl implements UnitService {
    @Autowired
    private UnitRepository unitRepository;
    @Autowired
    private UtilsService utilsService;
    @Autowired
    private UnitMutatorService unitMutatorService;

    @Override
    public List<UnitModel> getUnitsAll(String sort, String sortDir, int page, int size) {
        return unitRepository.findAll(utilsService.getPageable(sort, sortDir, page, size)).getContent();
    }

    @Override
    public List<UnitModel> getUnitsByNames(List<String> names, String sort, String sortDir, int page, int size) {
        return unitRepository.findByNameIn(names, utilsService.getPageable(sort, sortDir, page, size));
    }

    @Override
    public List<UnitModel> getUnitsByNations(List<String> nations, String sort, String sortDir, int page, int size) {
        return unitRepository.findByNationIn(nations, utilsService.getPageable(sort, sortDir, page, size));
    }

    @Override
    public List<UnitModel> getUnitsByIds(List<Long> ids, String sort, String sortDir, int page, int size) {
        return unitRepository.findByIdIn(ids, utilsService.getPageable(sort, sortDir, page, size));
    }

    @Override
    public List<UnitModel> getUnitsByGameIds(List<Integer> ids, String sort, String sortDir, int page, int size) {
        return unitRepository.findByGameIdIn(ids, utilsService.getPageable(sort, sortDir, page, size));
    }

    @Override
    public void applyResearches(List<UnitModel> units, List<ResearchModel> researches) {
        units.forEach(unit -> researches.forEach(research -> unitMutatorService.applyResearchMutations(unit, research)));
    }

    @Override
    public List<UnitOption> getUnitOptions(String locale, String namePattern, List<Integer> gameIds, List<Integer> nations,
                                           List<Integer> unitTagIds, List<Integer> searchTagIds,
                                           String sort, String sortDir, int page, int size) {
        int offset = page * size;
        return unitRepository.findOptions(locale, "<*unitName%",
                namePattern == null ? null : String.format("%%%s%%", namePattern),
                gameIds, nations, unitTagIds, searchTagIds, sort, sortDir, offset, size);
    }

    @Override
    public List<NationOption> getNationOptions() {
        return unitRepository.findNationOptions();
    }

    @Override
    public List<TagOption> getUnitTagOptions() {
        return unitRepository.findTagOptions(UNIT_TAGS.getGroupName());
    }

    @Override
    public List<TagOption> getSearchTagOptions() {
        return unitRepository.findTagOptions(UNIT_SEARCH_TAGS.getGroupName());
    }

    @Override
    public List<String> getColumnNames() {
        return unitRepository.getColumnNames();
    }

    @Override
    public void setUnits(List<UnitModel> unitModels) {
        unitRepository.deleteAll();
        unitRepository.saveAll(unitModels);
    }
}
