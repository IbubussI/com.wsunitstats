package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toBool;
import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class WeaponEnable implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int weaponId = toNumber(parameters.get("weapon"), -1);
        boolean enable = toBool(parameters.get("enable"), true);
        for (WeaponModel weapon : target.getWeapons()) {
            if (weapon.getWeaponId() == weaponId) {
                weapon.setEnabled(enable);
                return;
            }
        }
    }
}
