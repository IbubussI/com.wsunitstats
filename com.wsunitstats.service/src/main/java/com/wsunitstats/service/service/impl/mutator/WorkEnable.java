package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ability.container.GenericAbilityContainer;
import com.wsunitstats.domain.submodel.ability.container.WorkAbilityContainer;
import com.wsunitstats.utils.Constants;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toBool;
import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class WorkEnable implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int id = toNumber(parameters.get("id"), -1);
        boolean enable = toBool(parameters.get("enable"), true);
        for (GenericAbilityContainer abilityContainer : target.getAbilities()) {
            if (abilityContainer.getContainerType() == Constants.AbilityContainerType.WORK.getType()) {
                WorkAbilityContainer workAbilityContainer = (WorkAbilityContainer) abilityContainer;
                if (workAbilityContainer.getAbility().getAbilityId() == id) {
                    workAbilityContainer.getWork().setEnabled(enable);
                    return;
                }
            }
        }
    }
}
