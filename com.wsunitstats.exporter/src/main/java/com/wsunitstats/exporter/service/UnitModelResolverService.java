package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.model.SourceModelWrapper;
import com.wsunitstats.domain.UnitModel;

import java.util.List;

public interface UnitModelResolverService {
    List<UnitModel> resolveFromJsonModel(SourceModelWrapper rootContainer);
}
