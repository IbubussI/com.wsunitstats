package com.wsunitstats.exporter.service;

import com.wsunitstats.domain.submodel.NationModel;

public interface NationResolver {
    NationModel getUnitNation(int unitId);
}
