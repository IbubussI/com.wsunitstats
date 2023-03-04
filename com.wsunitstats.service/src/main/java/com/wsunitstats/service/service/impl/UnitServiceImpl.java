package com.wsunitstats.service.service.impl;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.service.repository.UnitRepository;
import com.wsunitstats.service.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UnitServiceImpl implements UnitService {
    @Autowired
    private UnitRepository unitRepository;

    @Override
    public List<UnitModel> getUnitsAll(String sort, String sortDir, int page, int size) {
        return unitRepository.findAll(getPageable(sort, sortDir, page, size)).getContent();
    }

    @Override
    public List<UnitModel> getUnitsByNames(List<String> names, String sort, String sortDir, int page, int size) {
        return unitRepository.findByNameIn(names, getPageable(sort, sortDir, page, size));
    }

    @Override
    public List<UnitModel> getUnitsByNations(List<String> nations, String sort, String sortDir, int page, int size) {
        return unitRepository.findByNationIn(nations, getPageable(sort, sortDir, page, size));
    }

    @Override
    public List<UnitModel> getUnitsByGameIds(List<Integer> ids, String sort, String sortDir, int page, int size) {
        return unitRepository.findByGameIdIn(ids, getPageable(sort, sortDir, page, size));
    }

    @Override
    public void setUnits(List<UnitModel> unitModels) {
        unitRepository.deleteAll();
        unitRepository.saveAll(unitModels);
    }

    private Pageable getPageable(String orderBy, String sortDir, int page, int size) {
        return "asc".equals(sortDir)
                ? PageRequest.of(page, size, Sort.by(orderBy).ascending())
                : PageRequest.of(page, size, Sort.by(orderBy).descending());
    }
}
