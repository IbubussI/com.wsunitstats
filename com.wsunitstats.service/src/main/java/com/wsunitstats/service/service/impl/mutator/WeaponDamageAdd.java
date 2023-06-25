package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.weapon.DamageModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.utils.Util;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class WeaponDamageAdd implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int add = toNumber(parameters.get("add"), 0);
        int mult = toNumber(parameters.get("mult"), -1);
        if (weaponId != -1) {
            for (WeaponModel weapon : target.getWeapons()) {
                if (weapon.getWeaponId() == weaponId) {
                    processWeapon(weapon, mult, add);
                }
            }
        } else {
            for (WeaponModel weapon : target.getWeapons()) {
                processWeapon(weapon, mult, add);
            }
        }
    }

    private void processWeapon(WeaponModel weapon, int mult, int add) {
        DamageModel damage = weapon.getDamage().getDamages().get(0);
        Double value = damage.getValue();
        if (mult == -1) {
            value = value + Util.intToDoubleShift(add);
        } else {
            // floored to match in-game ui value
            value = Math.floor(value * mult / 100) + Util.intToDoubleShift(add);
        }
        damage.setValue(value);
    }
}
