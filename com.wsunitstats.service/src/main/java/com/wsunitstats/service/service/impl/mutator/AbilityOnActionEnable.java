package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ability.container.GenericAbilityContainer;
import com.wsunitstats.domain.submodel.ability.container.OnActionAbilityContainer;
import com.wsunitstats.utils.Constants;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toBool;

public class AbilityOnActionEnable implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        boolean enable = toBool(parameters.get("enable"), true);
        for (GenericAbilityContainer abilityContainer : target.getAbilities()) {
            if (abilityContainer.getContainerType() == Constants.AbilityContainerType.ON_ACTION.getType()) {
                OnActionAbilityContainer onActionAbilityContainer = (OnActionAbilityContainer) abilityContainer;
                onActionAbilityContainer.setEnabled(enable);
                return;
            }
        }
    }
}
