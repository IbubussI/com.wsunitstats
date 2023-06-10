package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ReserveModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class WorkReserveTimeMult implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int work = toNumber(parameters.get("work"), -1);
        int work2 = toNumber(parameters.get("work2"), -1);
        int work3 = toNumber(parameters.get("work3"), -1);
        int mult = toNumber(parameters.get("mult"), 100);
        List<AbilityModel> abilities = target.getAbilities();
        if (work != -1) {
            mult(getAbilityByWorkId(abilities, work).getReserve(), mult);
            if (work2 != -1) {
                mult(getAbilityByWorkId(abilities, work2).getReserve(), mult);
                if (work3 != -1) {
                    mult(getAbilityByWorkId(abilities, work3).getReserve(), mult);
                }
            }
        } else {
            for (AbilityModel ability : abilities) {
                mult(ability.getReserve(), mult);
            }
        }
    }

    private AbilityModel getAbilityByWorkId(List<AbilityModel> abilities, int workId) {
        AbilityModel result = null;
        for (AbilityModel ability : abilities) {
            if (ability.getWorkId() == workId) {
                result = ability;
            }
        }
        return result;
    }

    private void mult(ReserveModel reserve, int mult) {
        reserve.setReserveTime(reserve.getReserveTime() * mult / 100);
    }
}