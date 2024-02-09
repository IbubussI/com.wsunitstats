package com.wsunitstats.service.service.impl.mutator.weapon;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.DistanceModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.service.service.impl.mutator.Mutator;
import com.wsunitstats.utils.Utils;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class MaxDistanceAdd implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int turretId = toNumber(parameters.get("turret"), -1);
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int add = toNumber(parameters.get("add"), 0);

        if (turretId == -1) {
            processWeapons(target.getWeapons(), weaponId, add);
        } else if (turretId < 0) {
            for (TurretModel turret : target.getTurrets()) {
                processWeapons(turret.getWeapons(), weaponId, add);
            }
        } else {
            for (TurretModel turret : target.getTurrets()) {
                if (turret.getTurretId() == turretId) {
                    processWeapons(turret.getWeapons(), weaponId, add);
                }
            }
        }
    }

    private void processWeapons(List<WeaponModel> weapons, int weaponId, int add) {
        if (weaponId == -1) {
            for (WeaponModel weapon : weapons) {
                processWeapon(weapon, add);
            }
        } else {
            for (WeaponModel weapon : weapons) {
                if (weapon.getWeaponId() == weaponId) {
                    processWeapon(weapon, add);
                }
            }
        }
    }

    private void processWeapon(WeaponModel weapon, int add) {
        DistanceModel distance = weapon.getDistance();
        distance.setMax(distance.getMax() + Utils.intToDoubleShift(add));
        distance.setStop(distance.getStop() + Utils.intToDoubleShift(add));
    }
}
