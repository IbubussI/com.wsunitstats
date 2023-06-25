package com.wsunitstats.exporter.service;

import com.wsunitstats.domain.submodel.ability.container.GenericAbilityContainer;
import com.wsunitstats.exporter.model.json.gameplay.submodel.UnitJsonModel;

import java.util.List;

public interface AbilityMappingService {
      List<GenericAbilityContainer> mapAbilities(UnitJsonModel unitJsonModel);
}
