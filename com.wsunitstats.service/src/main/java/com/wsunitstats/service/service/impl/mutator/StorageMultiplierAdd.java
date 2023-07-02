package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;
import static com.wsunitstats.utils.Constants.STORAGE_MULTIPLIER_MODIFIER;

public class StorageMultiplierAdd implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int add = toNumber(parameters.get("add"), 0);
        target.setStorageMultiplier(target.getStorageMultiplier() + (int) (STORAGE_MULTIPLIER_MODIFIER * add));
    }
}
