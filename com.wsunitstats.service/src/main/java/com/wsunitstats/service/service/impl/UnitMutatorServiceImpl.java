package com.wsunitstats.service.service.impl;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.research.UpgradeModel;
import com.wsunitstats.service.service.UnitMutatorService;
import com.wsunitstats.service.service.impl.mutator.GatherSpeedAdd;
import com.wsunitstats.service.service.impl.mutator.MoveSpeed;
import com.wsunitstats.service.service.impl.mutator.Mutator;
import com.wsunitstats.service.service.impl.mutator.WeaponSetDamageArea;
import com.wsunitstats.service.service.impl.mutator.WeaponSpreadMult;
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
        mutators.put(3, new WeaponSetDamageArea());
        mutators.put(4, new WeaponSpreadMult());
//        mutators.put(5, new ArmorAddSize());
//        mutators.put(13, new ArmorAddThickness());
//        mutators.put(14, new WeaponRechargePeriodDec());
//        mutators.put(15, new WeaponMaxDistanceAdd());
//        mutators.put(17, new WorkEnable());
//        mutators.put(19, new Regeneration());
//        mutators.put(20, new BuildingSpeedMult());
//        mutators.put(21, new BatherBagSizeAdd());
//        mutators.put(22, new WorkReserveTimeMult());
//        mutators.put(23, new WorkReserveLimitAdd());
//        mutators.put(27, new StorageMultiplierAdd());
//        mutators.put(28, new TurretRechargePeriodDec());
//        mutators.put(29, new TurretSpreadMult());
//        mutators.put(31, new WorkPriceChange());
//        mutators.put(32, new WeaponEnable());
//        mutators.put(33, new AbilityOnActionEnable());
//        mutators.put(34, new WeaponDamageAdd());
//        mutators.put(35, new TurretDamageAdd());
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
