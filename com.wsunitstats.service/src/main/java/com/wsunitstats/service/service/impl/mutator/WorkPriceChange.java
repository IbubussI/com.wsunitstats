package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ResourceModel;
import com.wsunitstats.domain.submodel.ability.container.GenericAbilityContainer;
import com.wsunitstats.domain.submodel.ability.container.WorkAbilityContainer;
import com.wsunitstats.utils.Constants;
import com.wsunitstats.utils.Utils;

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
        for (GenericAbilityContainer abilityContainer : target.getAbilities()) {
            if (abilityContainer.getContainerType() == Constants.AbilityContainerType.WORK.getType()) {
                WorkAbilityContainer workAbilityContainer = (WorkAbilityContainer) abilityContainer;
                if (workAbilityContainer.getWork().getWorkId() == workId) {
                    processResources(workAbilityContainer.getWork().getCost(), mult, add, resourceId);
                }
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
        resource.setValue(resource.getValue() * mult / 100 + Utils.intToDoubleShift(add).intValue());
    }
}
