package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toBool;

public class AbilityOnActionEnable implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        boolean enable = toBool(parameters.get("enable"), true);
        for (AbilityModel ability : target.getAbilities()) {
            if (ability.getOnAction() != null) {
                ability.setEnabled(enable);
                return;
            }
        }
    }
}
