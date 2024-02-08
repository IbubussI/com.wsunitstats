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
        mutators.put(0, new MoveSpeed()); // 1749535993
        mutators.put(2, new GatherSpeedAdd()); // 996158931
        mutators.put(3, new SetDamageArea()); // 2545488229
        mutators.put(4, new SpreadMult()); // 1165500952
        mutators.put(5, new ArmorAddSize()); // 732754697
        mutators.put(13, new ArmorAddThickness()); // 3347185990
        mutators.put(14, new RechargePeriodDec()); // 3672228551
        mutators.put(15, new MaxDistanceAdd()); // 310275754
        mutators.put(17, new WorkEnable()); // 1995273458
        mutators.put(19, new Regeneration()); // 1287263617
        mutators.put(20, new BuildingSpeedMult()); // 1184009123
        mutators.put(21, new GatherBagSizeAdd()); // 4100800216
        mutators.put(22, new WorkReserveTimeMult()); // 943779194
        mutators.put(23, new WorkReserveLimitAdd()); // 4203811904
        mutators.put(27, new StorageMultiplierAdd()); // 2433490476
        mutators.put(31, new WorkPriceChange()); // 1042819526
        mutators.put(32, new Enable()); // 1815469020
        mutators.put(33, new AbilityOnActionEnable()); // 1911934956
        mutators.put(34, new DamageAdd()); // 440889882
        mutators.put(35, new TurretDamageAdd()); // 187789004 - not exists anymore
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
