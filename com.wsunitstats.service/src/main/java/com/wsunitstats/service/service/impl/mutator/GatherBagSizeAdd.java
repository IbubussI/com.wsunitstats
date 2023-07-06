package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.GatherModel;
import com.wsunitstats.utils.Util;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class GatherBagSizeAdd implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int gatherId = toNumber(parameters.get("gather"), -1);
        int add = toNumber(parameters.get("add"), 0);
        List<GatherModel> gatherList = target.getGather();
        if (gatherId == -1) {
            for (GatherModel gather : gatherList) {
                addBagSize(gather, add);
            }
        } else {
            for (GatherModel gather : gatherList) {
                if (gather.getGatherId() == gatherId) {
                    addBagSize(gather, add);
                }
            }
        }
    }

    private void addBagSize(GatherModel gather, int add) {
        gather.setBagSize(gather.getBagSize() + Util.intToDoubleShift(add));
    }
}
