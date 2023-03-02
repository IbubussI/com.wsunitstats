package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.model.raw.FileContainerModel;
import com.wsunitstats.model.UnitModel;

import java.util.List;

public interface UnitModelResolverService {
    List<UnitModel> resolveFromJsonModel(FileContainerModel rootContainer);
}
