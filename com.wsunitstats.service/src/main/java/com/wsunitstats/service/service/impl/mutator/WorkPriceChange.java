package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ResourceModel;
import com.wsunitstats.domain.submodel.ability.AbilityModel;
import com.wsunitstats.utils.Util;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class WorkPriceChange implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int workId = toNumber(parameters.get("work"), 100);
        int mult = toNumber(parameters.get("mult"), 100);
        int add = toNumber(parameters.get("add"), 0);
        int resourceId = toNumber(parameters.get("resource"), -1);
        List<AbilityModel> abilities = target.getAbilities();
        for (AbilityModel ability : abilities) {
            if (ability.getWorkId() == workId) {
                processResources(ability.getCost(), mult, add, resourceId);
            }
        }
    }

    private void processResources(List<ResourceModel> resources, int mult, int add, int resourceId) {
        if (resourceId != -1) {
            for (ResourceModel resource : resources) {
                if (resource.getResourceId() == resourceId) {
                    processResource(resource, mult, add);
                    return;
                }
            }
        } else {
            for (ResourceModel resource : resources) {
                processResource(resource, mult, add);
            }
        }
    }

    private void processResource(ResourceModel resource, int mult, int add) {
        resource.setValue(resource.getValue() * mult / 100 + Util.intToDoubleShift(add).intValue());
    }
}
