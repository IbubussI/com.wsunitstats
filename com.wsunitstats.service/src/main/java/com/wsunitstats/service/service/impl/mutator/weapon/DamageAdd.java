package com.wsunitstats.service.service.impl.mutator.weapon;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.weapon.DamageModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.service.service.impl.mutator.Mutator;
import com.wsunitstats.utils.Util;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class DamageAdd implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int turretId = toNumber(parameters.get("turret"), -1);
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int add = toNumber(parameters.get("add"), 0);
        int mult = toNumber(parameters.get("mult"), -1);

        if (turretId == -1) {
            processWeapons(target.getWeapons(), weaponId, mult, add);
        } else if (turretId < 0) {
            for (TurretModel turret : target.getTurrets()) {
                processWeapons(turret.getWeapons(), weaponId, mult, add);
            }
        } else {
            for (TurretModel turret : target.getTurrets()) {
                if (turret.getTurretId() == turretId) {
                    processWeapons(turret.getWeapons(), weaponId, mult, add);
                }
            }
        }
    }

    private void processWeapons(List<WeaponModel> weapons, int weaponId, int mult, int add) {
        if (weaponId == -1) {
            for (WeaponModel weapon : weapons) {
                processWeapon(weapon, mult, add);
            }
        } else {
            for (WeaponModel weapon : weapons) {
                if (weapon.getWeaponId() == weaponId) {
                    processWeapon(weapon, mult, add);
                }
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
