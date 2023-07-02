package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class TurretSpreadMult implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int turretId = toNumber(parameters.get("turret"), -1);
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int mult = toNumber(parameters.get("mult"), 100);
        if (turretId != -1) {
            for (TurretModel turret : target.getTurrets()) {
                if (turret.getTurretId() == turretId) {
                    processTurret(turret, weaponId, mult);
                }
            }
        } else {
            for (TurretModel turret : target.getTurrets()) {
                processTurret(turret, weaponId, mult);
            }
        }
    }

    private void processTurret(TurretModel turret, int weaponId, int mult) {
        if (weaponId != -1) {
            for (WeaponModel weapon : turret.getWeapons()) {
                if (weapon.getWeaponId() == weaponId) {
                    processWeapon(weapon, mult);
                    return;
                }
            }
        } else {
            for (WeaponModel weapon : turret.getWeapons()) {
                processWeapon(weapon, mult);
            }
        }
    }

    private void processWeapon(WeaponModel weapon, int mult) {
        // floored to match in-game ui value
        weapon.setSpread(Math.floor(weapon.getSpread() * mult / 100));
    }
}
