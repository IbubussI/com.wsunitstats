package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.utils.Utils;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class Regeneration implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int add = toNumber(parameters.get("add"), 0);
        target.setRegenerationSpeed(target.getRegenerationSpeed() + Utils.intToDoubleTick(add));
    }
}
