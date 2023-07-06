package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class WeaponSpreadMult implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int mult = toNumber(parameters.get("mult"), 100);
        for (WeaponModel weapon : target.getWeapons()) {
            if (weapon.getWeaponId() == weaponId) {
                // floored to match in-game ui value
                weapon.setSpread(Math.floor(weapon.getSpread() * mult / 100));
                return;
            }
        }
    }
}
