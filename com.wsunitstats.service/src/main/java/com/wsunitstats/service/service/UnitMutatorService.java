package com.wsunitstats.service.service;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.domain.UnitModel;

public interface UnitMutatorService {
    void applyResearchMutations(UnitModel target, ResearchModel research);
}
