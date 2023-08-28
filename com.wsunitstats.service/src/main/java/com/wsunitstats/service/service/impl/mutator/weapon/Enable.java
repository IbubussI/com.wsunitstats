package com.wsunitstats.service.service.impl.mutator.weapon;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.TurretModel;
import com.wsunitstats.domain.submodel.weapon.DamageModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.service.service.impl.mutator.Mutator;
import com.wsunitstats.utils.Util;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toBool;
import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class Enable implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int turretId = toNumber(parameters.get("turret"), -1);
        int weaponId = toNumber(parameters.get("weapon"), -1);
        boolean enable = toBool(parameters.get("enable"), true);

        if (turretId == -1) {
            processWeapon(target.getWeapons(), weaponId, enable);
        } else {
            processWeapon(target.getTurrets().get(turretId).getWeapons(), weaponId, enable);
        }
    }

    private void processWeapon(List<WeaponModel> weapons, int weaponId, boolean enable) {
        for (WeaponModel weapon : weapons) {
            if (weapon.getWeaponId() == weaponId) {
                weapon.setEnabled(enable);
                return;
            }
        }
    }
}
