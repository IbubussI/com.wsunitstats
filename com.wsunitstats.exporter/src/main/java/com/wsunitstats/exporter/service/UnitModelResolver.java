package com.wsunitstats.exporter.service;

import com.wsunitstats.domain.UnitModel;

import java.util.List;

public interface UnitModelResolver {
    List<UnitModel> resolve();
}
