package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.utils.Util;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class TurretRechargePeriodDec implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int turretId = toNumber(parameters.get("turret"), -1);
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int dec = toNumber(parameters.get("dec"), 0);
        if (turretId != -1) {
            for (TurretModel turret : target.getTurrets()) {
                if (turret.getTurretId() == turretId) {
                    processTurret(turret, weaponId, dec);
                }
            }
        } else {
            for (TurretModel turret : target.getTurrets()) {
                processTurret(turret, weaponId, dec);
            }
        }
    }

    private void processTurret(TurretModel turret, int weaponId, int dec) {
        if (weaponId != -1) {
            for (WeaponModel weapon : turret.getWeapons()) {
                if (weapon.getWeaponId() == weaponId) {
                    processWeapon(weapon, dec);
                    return;
                }
            }
        } else {
            for (WeaponModel weapon : turret.getWeapons()) {
                processWeapon(weapon, dec);
            }
        }
    }

    private void processWeapon(WeaponModel weapon, int dec) {
        weapon.setRechargePeriod(weapon.getRechargePeriod() - Util.intToDoubleShift(dec));
    }
}
