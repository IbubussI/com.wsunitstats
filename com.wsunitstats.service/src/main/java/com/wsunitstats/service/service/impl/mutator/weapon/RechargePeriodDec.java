package com.wsunitstats.service.service.impl.mutator.weapon;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.service.service.impl.mutator.Mutator;
import com.wsunitstats.utils.Utils;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class RechargePeriodDec implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int turretId = toNumber(parameters.get("turret"), -1);
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int dec = toNumber(parameters.get("dec"), 0);

        if (turretId == -1) {
            processWeapons(target.getWeapons(), weaponId, dec);
        } else if (turretId < 0) {
            for (TurretModel turret : target.getTurrets()) {
                processWeapons(turret.getWeapons(), weaponId, dec);
            }
        } else {
            for (TurretModel turret : target.getTurrets()) {
                if (turret.getTurretId() == turretId) {
                    processWeapons(turret.getWeapons(), weaponId, dec);
                }
            }
        }
    }

    private void processWeapons(List<WeaponModel> weapons, int weaponId, int dec) {
        if (weaponId == -1) {
            for (WeaponModel weapon : weapons) {
                processWeapon(weapon, dec);
            }
        } else {
            for (WeaponModel weapon : weapons) {
                if (weapon.getWeaponId() == weaponId) {
                    processWeapon(weapon, dec);
                }
            }
        }
    }

    private void processWeapon(WeaponModel weapon, int dec) {
        weapon.setRechargePeriod(weapon.getRechargePeriod() - Utils.intToDoubleShift(dec));
    }
}
