package com.wsunitstats.service.service.impl.mutator.weapon;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.service.service.impl.mutator.Mutator;
import com.wsunitstats.utils.Constants;
import com.wsunitstats.utils.Util;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class SetDamageArea implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int turretId = toNumber(parameters.get("turret"), -1);
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int area = toNumber(parameters.get("area"), -1);

        if (turretId == -1) {
            processWeapons(target.getWeapons(), weaponId, area);
        } else if (turretId < 0) {
            for (TurretModel turret : target.getTurrets()) {
                processWeapons(turret.getWeapons(), weaponId, area);
            }
        } else {
            for (TurretModel turret : target.getTurrets()) {
                if (turret.getTurretId() == turretId) {
                    processWeapons(turret.getWeapons(), weaponId, area);
                }
            }
        }
    }

    private void processWeapons(List<WeaponModel> weapons, int weaponId, int area) {
        if (weaponId == -1) {
            for (WeaponModel weapon : weapons) {
                processWeapon(weapon, area);
            }
        } else {
            for (WeaponModel weapon : weapons) {
                if (weapon.getWeaponId() == weaponId) {
                    processWeapon(weapon, area);
                }
            }
        }
    }

    private void processWeapon(WeaponModel weapon, int area) {
        weapon.getDamage().setAreaType(Constants.DamageAreaType.get(area).getName());
    }
}
