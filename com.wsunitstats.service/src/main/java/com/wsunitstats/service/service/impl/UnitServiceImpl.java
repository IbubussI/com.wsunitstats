package com.wsunitstats.service.service.impl;

import com.wsunitstats.model.UnitModel;
import com.wsunitstats.service.repository.UnitRepository;
import com.wsunitstats.service.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UnitServiceImpl implements UnitService {
    @Autowired
    private UnitRepository unitRepository;

    @Override
    public List<UnitModel> getUnits() {
        return null;
    }

    @Override
    public void setUnits(List<UnitModel> unitModels) {
        unitRepository.deleteAll();
        unitRepository.saveAll(unitModels);
    }
}
