package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.utils.Constants;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class WeaponSetDamageArea implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int area = toNumber(parameters.get("area"), -1);
        for (WeaponModel weapon : target.getWeapons()) {
            if (weapon.getWeaponId() == weaponId) {
                weapon.getDamage().setAreaType(Constants.DamageAreaType.get(area).getName());
                return;
            }
        }
    }
}
