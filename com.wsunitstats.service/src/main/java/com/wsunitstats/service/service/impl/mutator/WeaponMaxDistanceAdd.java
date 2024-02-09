package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.DistanceModel;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import com.wsunitstats.utils.Utils;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class WeaponMaxDistanceAdd implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int weaponId = toNumber(parameters.get("weapon"), -1);
        int add = toNumber(parameters.get("add"), 0);
        for (WeaponModel weapon : target.getWeapons()) {
            if (weapon.getWeaponId() == weaponId) {
                DistanceModel distance = weapon.getDistance();
                distance.setMax(distance.getMax() + Utils.intToDoubleShift(add));
                distance.setStop(distance.getStop() + Utils.intToDoubleShift(add));
                return;
            }
        }
    }
}
