package com.wsunitstats.exporter.service;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.domain.UnitModel;

import java.util.List;

public interface ModelResolver {
    List<UnitModel> resolveUnits();
    List<ResearchModel> resolveResearches();
}
