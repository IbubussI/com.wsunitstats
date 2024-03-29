package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.GatherModel;
import com.wsunitstats.utils.Utils;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class GatherSpeedAdd implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int gatherId = toNumber(parameters.get("gather"), -1);
        int add = toNumber(parameters.get("add"), 0);
        for (GatherModel gather : target.getGather()) {
            if (gather.getGatherId() == gatherId) {
                gather.setPerSecond(gather.getPerSecond() + Utils.intToDoubleTick(add));
                return;
            }
        }
    }
}