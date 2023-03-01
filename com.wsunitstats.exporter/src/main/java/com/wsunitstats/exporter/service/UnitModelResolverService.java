package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.model.mapped.UnitModel;
import com.wsunitstats.exporter.model.raw.FileContainerModel;

import java.util.List;

public interface UnitModelResolverService {
    List<UnitModel> resolveFromJsonModel(FileContainerModel rootContainer);
}
