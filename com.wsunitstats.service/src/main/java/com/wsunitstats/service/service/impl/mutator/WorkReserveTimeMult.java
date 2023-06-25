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

public class WorkReserveTimeMult implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int work = toNumber(parameters.get("work"), -1);
        int work2 = toNumber(parameters.get("work2"), -1);
        int work3 = toNumber(parameters.get("work3"), -1);
        int mult = toNumber(parameters.get("mult"), 100);
        List<WorkModel> workModels = getAbilityWorks(target.getAbilities());
        if (work != -1) {
            mult(getWorkByWorkId(workModels, work).getReserve(), mult);
            if (work2 != -1) {
                mult(getWorkByWorkId(workModels, work2).getReserve(), mult);
                if (work3 != -1) {
                    mult(getWorkByWorkId(workModels, work3).getReserve(), mult);
                }
            }
        } else {
            for (WorkModel workModel : workModels) {
                mult(workModel.getReserve(), mult);
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

    private void mult(ReserveModel reserve, int mult) {
        reserve.setReserveTime(reserve.getReserveTime() * mult / 100);
    }
}