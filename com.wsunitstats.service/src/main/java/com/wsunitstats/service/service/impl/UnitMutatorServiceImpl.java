package com.wsunitstats.service.service.impl;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.research.UpgradeModel;
import com.wsunitstats.service.service.UnitMutatorService;
import com.wsunitstats.service.service.impl.mutator.GatherSpeedAdd;
import com.wsunitstats.service.service.impl.mutator.MoveSpeed;
import com.wsunitstats.service.service.impl.mutator.Mutator;
import jakarta.annotation.PostConstruct;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UnitMutatorServiceImpl implements UnitMutatorService {
    private final Map<Integer, Mutator> mutators = new HashMap<>();

    @PostConstruct
    protected void postConstruct() {
        mutators.put(0, new MoveSpeed());
        mutators.put(2, new GatherSpeedAdd());
    }

    @Override
    public void applyResearchMutations(UnitModel target, ResearchModel research) {
        for (UpgradeModel upgrade : research.getUpgrades()) {
            if (upgrade.getUnit() != null && upgrade.getUnit().getEntityId() == target.getGameId()) {
                int mutatorId = upgrade.getProgramId();
                Map<String, String> params = getParametersMap(upgrade.getParameters());
                applyMutation(target, mutatorId, params);
            }
        }
    }

    private void applyMutation(UnitModel target, int mutatorId, Map<String, String> params) {
        Mutator mutator = mutators.get(mutatorId);
        if (mutator != null) {
            mutator.mutate(target, params);
        }
    }

    public Map<String, String> getParametersMap(List<String> parameters) {
        Map<String, String> result = new HashMap<>();
        parameters.forEach(param -> {
            String[] split = param.split("=");
            result.put(split[0], split[1]);
        });
        return result;
    }
}
