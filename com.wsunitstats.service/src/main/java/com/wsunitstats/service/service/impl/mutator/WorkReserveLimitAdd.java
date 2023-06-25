package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ReserveModel;
import com.wsunitstats.domain.submodel.ability.WorkModel;
import com.wsunitstats.domain.submodel.ability.container.GenericAbilityContainer;
import com.wsunitstats.domain.submodel.ability.container.WorkAbilityContainer;
import com.wsunitstats.utils.Constants;

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
        List<WorkModel> workModels = getAbilityWorks(target.getAbilities());
        if (work != -1) {
            add(getWorkByWorkId(workModels, work).getReserve(), add);
            if (work2 != -1) {
                add(getWorkByWorkId(workModels, work2).getReserve(), add);
                if (work3 != -1) {
                    add(getWorkByWorkId(workModels, work3).getReserve(), add);
                }
            }
        } else {
            for (WorkModel workModel : workModels) {
                add(workModel.getReserve(), add);
            }
        }
    }

    private WorkModel getWorkByWorkId(List<WorkModel> workModels, int workId) {
        WorkModel result = null;
        for (WorkModel workModel : workModels) {
            if (workModel.getWorkId() == workId) {
                result = workModel;
                break;
            }
        }
        return result;
    }

    private List<WorkModel> getAbilityWorks(List<GenericAbilityContainer> abilityContainers) {
        return abilityContainers.stream()
                .filter(abilityContainer -> abilityContainer.getContainerType() == Constants.AbilityContainerType.WORK.getType())
                .map(abilityContainer -> {
                    WorkAbilityContainer workAbilityContainer = (WorkAbilityContainer) abilityContainer;
                    return workAbilityContainer.getWork();
                })
                .toList();
    }

    private void add(ReserveModel reserve, int add) {
        reserve.setReserveLimit(reserve.getReserveLimit() + add);
    }
}
