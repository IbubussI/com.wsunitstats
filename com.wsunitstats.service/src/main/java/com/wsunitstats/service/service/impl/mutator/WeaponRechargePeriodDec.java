package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.utils.Utils;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class WeaponRechargePeriodDec implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int dec = toNumber(parameters.get("dec"), 0);
        for (WeaponModel weapon : target.getWeapons()) {
            if (weapon.getWeaponId() == weaponId) {
                weapon.setRechargePeriod(weapon.getRechargePeriod() - Utils.intToDoubleShift(dec));
                return;
            }
        }
    }
}
