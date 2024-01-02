package com.wsunitstats.service.service.impl;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.research.UpgradeModel;
import com.wsunitstats.service.service.UnitMutatorService;
import com.wsunitstats.service.service.impl.mutator.AbilityOnActionEnable;
import com.wsunitstats.service.service.impl.mutator.ArmorAddSize;
import com.wsunitstats.service.service.impl.mutator.ArmorAddThickness;
import com.wsunitstats.service.service.impl.mutator.BuildingSpeedMult;
import com.wsunitstats.service.service.impl.mutator.GatherBagSizeAdd;
import com.wsunitstats.service.service.impl.mutator.GatherSpeedAdd;
import com.wsunitstats.service.service.impl.mutator.MoveSpeed;
import com.wsunitstats.service.service.impl.mutator.Mutator;
import com.wsunitstats.service.service.impl.mutator.Regeneration;
import com.wsunitstats.service.service.impl.mutator.StorageMultiplierAdd;
import com.wsunitstats.service.service.impl.mutator.TurretDamageAdd;
import com.wsunitstats.service.service.impl.mutator.TurretRechargePeriodDec;
import com.wsunitstats.service.service.impl.mutator.TurretSpreadMult;
import com.wsunitstats.service.service.impl.mutator.WeaponDamageAdd;
import com.wsunitstats.service.service.impl.mutator.WeaponEnable;
import com.wsunitstats.service.service.impl.mutator.WeaponMaxDistanceAdd;
import com.wsunitstats.service.service.impl.mutator.WeaponRechargePeriodDec;
import com.wsunitstats.service.service.impl.mutator.WeaponSetDamageArea;
import com.wsunitstats.service.service.impl.mutator.WeaponSpreadMult;
import com.wsunitstats.service.service.impl.mutator.WorkEnable;
import com.wsunitstats.service.service.impl.mutator.WorkPriceChange;
import com.wsunitstats.service.service.impl.mutator.WorkReserveLimitAdd;
import com.wsunitstats.service.service.impl.mutator.WorkReserveTimeMult;
import com.wsunitstats.service.service.impl.mutator.weapon.DamageAdd;
import com.wsunitstats.service.service.impl.mutator.weapon.Enable;
import com.wsunitstats.service.service.impl.mutator.weapon.MaxDistanceAdd;
import com.wsunitstats.service.service.impl.mutator.weapon.RechargePeriodDec;
import com.wsunitstats.service.service.impl.mutator.weapon.SetDamageArea;
import com.wsunitstats.service.service.impl.mutator.weapon.SpreadMult;
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
        mutators.put(3, new SetDamageArea());
        mutators.put(4, new SpreadMult());
        mutators.put(5, new ArmorAddSize());
        mutators.put(13, new ArmorAddThickness());
        mutators.put(14, new RechargePeriodDec());
        mutators.put(15, new MaxDistanceAdd());
        mutators.put(17, new WorkEnable());
        mutators.put(19, new Regeneration());
        mutators.put(20, new BuildingSpeedMult());
        mutators.put(21, new GatherBagSizeAdd());
        mutators.put(22, new WorkReserveTimeMult());
        mutators.put(23, new WorkReserveLimitAdd());
        mutators.put(27, new StorageMultiplierAdd());
        mutators.put(31, new WorkPriceChange());
        mutators.put(32, new Enable());
        mutators.put(33, new AbilityOnActionEnable());
        mutators.put(34, new DamageAdd());
        mutators.put(35, new TurretDamageAdd());
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
