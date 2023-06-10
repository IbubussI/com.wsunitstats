package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toBool;
import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class WorkEnable implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int id = toNumber(parameters.get("id"), -1);
        boolean enable = toBool(parameters.get("enable"), true);
        for (AbilityModel ability : target.getAbilities()) {
            if (ability.getAbilityId() == id) {
                ability.setEnabled(enable);
                return;
            }
        }
    }
}
