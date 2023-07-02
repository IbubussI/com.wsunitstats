package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;

import java.util.Map;

public interface Mutator {
    void mutate(UnitModel target, Map<String, String> parameters);
}
