package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.weapon.DamageModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.utils.Utils;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class TurretDamageAdd implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int turretId = toNumber(parameters.get("turret"), -1);
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int mult = toNumber(parameters.get("mult"), -1);
        int add = toNumber(parameters.get("add"), 0);
        if (turretId != -1) {
            for (TurretModel turret : target.getTurrets()) {
                if (turret.getTurretId() == turretId) {
                    processTurret(turret, weaponId, mult, add);
                }
            }
        } else {
            for (TurretModel turret : target.getTurrets()) {
                processTurret(turret, weaponId, mult, add);
            }
        }
    }

    private void processTurret(TurretModel turret, int weaponId, int mult, int add) {
        if (weaponId != -1) {
            for (WeaponModel weapon : turret.getWeapons()) {
                if (weapon.getWeaponId() == weaponId) {
                    processWeapon(weapon, mult, add);
                    return;
                }
            }
        } else {
            for (WeaponModel weapon : turret.getWeapons()) {
                processWeapon(weapon, mult, add);
            }
        }
    }

    private void processWeapon(WeaponModel weapon, int mult, int add) {
        DamageModel damage = weapon.getDamage().getDamages().get(0);
        Double value = damage.getValue();
        if (mult == -1) {
            value = value + Utils.intToDoubleShift(add);
        } else {
            // floored to match in-game ui value
            value = Math.floor(value * mult / 100) + Utils.intToDoubleShift(add);
        }
        damage.setValue(value);
    }
}
