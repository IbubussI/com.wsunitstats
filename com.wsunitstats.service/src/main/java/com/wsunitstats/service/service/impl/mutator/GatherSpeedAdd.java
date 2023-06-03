package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.GatherModel;
import com.wsunitstats.utils.Util;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class GatherSpeedAdd implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        Integer gatherId = toNumber(parameters.get("gather"), -1);
        Integer add = toNumber(parameters.get("add"), 0);
        for (GatherModel gather : target.getGather()) {
            if (gather.getGatherId() == gatherId) {
                gather.setPerSecond(gather.getPerSecond() + Util.intToDoubleTick(add));
                return;
            }
        }
    }
}