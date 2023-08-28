package com.wsunitstats.service.service.impl.mutator.weapon;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.service.service.impl.mutator.Mutator;
import com.wsunitstats.utils.Util;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class SpreadMult implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int turretId = toNumber(parameters.get("turret"), -1);
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int mult = toNumber(parameters.get("mult"), 100);

        if (turretId == -1) {
            processWeapons(target.getWeapons(), weaponId, mult);
        } else if (turretId < 0) {
            for (TurretModel turret : target.getTurrets()) {
                processWeapons(turret.getWeapons(), weaponId, mult);
            }
        } else {
            for (TurretModel turret : target.getTurrets()) {
                if (turret.getTurretId() == turretId) {
                    processWeapons(turret.getWeapons(), weaponId, mult);
                }
            }
        }
    }

    private void processWeapons(List<WeaponModel> weapons, int weaponId, int mult) {
        if (weaponId == -1) {
            for (WeaponModel weapon : weapons) {
                processWeapon(weapon, mult);
            }
        } else {
            for (WeaponModel weapon : weapons) {
                if (weapon.getWeaponId() == weaponId) {
                    processWeapon(weapon, mult);
                }
            }
        }
    }

    private void processWeapon(WeaponModel weapon, int mult) {
        // floored to match in-game ui value
        weapon.setSpread(Math.floor(weapon.getSpread() * mult / 100));
    }
}
