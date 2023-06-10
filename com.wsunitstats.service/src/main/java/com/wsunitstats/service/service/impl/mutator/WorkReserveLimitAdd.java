package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ReserveModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class WorkReserveLimitAdd implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int work = toNumber(parameters.get("work"), -1);
        int work2 = toNumber(parameters.get("work2"), -1);
        int work3 = toNumber(parameters.get("work3"), -1);
        int add = toNumber(parameters.get("add"), 0);
        List<AbilityModel> abilities = target.getAbilities();
        if (work != -1) {
            add(getAbilityByWorkId(abilities, work).getReserve(), add);
            if (work2 != -1) {
                add(getAbilityByWorkId(abilities, work2).getReserve(), add);
                if (work3 != -1) {
                    add(getAbilityByWorkId(abilities, work3).getReserve(), add);
                }
            }
        } else {
            for (AbilityModel ability : abilities) {
                add(ability.getReserve(), add);
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

    private void add(ReserveModel reserve, int add) {
        reserve.setReserveLimit(reserve.getReserveLimit() + add);
    }
}
