package com.ws.unit.stats.service;

import com.ws.unit.stats.model.mapped.UnitModel;
import com.ws.unit.stats.model.raw.RootJsonContainerModel;

import java.util.List;

public interface UnitModelResolverService {
    List<UnitModel> resolveFromJsonModel(RootJsonContainerModel rootContainer);
}
