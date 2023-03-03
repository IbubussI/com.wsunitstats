package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.model.UnitResolvingFileContainer;
import com.wsunitstats.model.UnitModel;

import java.util.List;

public interface UnitModelResolverService {
    List<UnitModel> resolveFromJsonModel(UnitResolvingFileContainer rootContainer);
}
