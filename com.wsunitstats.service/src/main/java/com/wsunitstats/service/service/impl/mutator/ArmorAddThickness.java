package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ArmorModel;
import com.wsunitstats.utils.Util;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class ArmorAddThickness implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int armor = toNumber(parameters.get("armor"), -1);
        int armor2 = toNumber(parameters.get("armor2"), -1);
        int armor3 = toNumber(parameters.get("armor3"), -1);
        int armor4 = toNumber(parameters.get("armor4"), -1);
        int add = toNumber(parameters.get("add"), 0);
        int add2 = toNumber(parameters.get("add2"), 0);
        int add3 = toNumber(parameters.get("add3"), 0);
        int add4 = toNumber(parameters.get("add4"), 0);
        int mult = toNumber(parameters.get("mult"), 100);
        int mult2 = toNumber(parameters.get("mult2"), 100);
        int mult3 = toNumber(parameters.get("mult3"), 100);
        int mult4 = toNumber(parameters.get("mult4"), 100);
        List<ArmorModel> armorData = target.getArmor();
        int size = armorData.size();
        if (armor != -1 && size > 0) {
            mod(armorData, armor, add, mult);
            if (armor2 != -1 && size > 1) {
                mod(armorData, armor2, add2, mult2);
                if (armor3 != -1 && size > 2) {
                    mod(armorData, armor3, add3, mult3);
                    if (armor4 != -1 && size > 3) {
                        mod(armorData, armor4, add4, mult4);
                    }
                }
            }
        }
    }

    private void mod(List<ArmorModel> armorData, int armorId, int add, int mult) {
        if (armorData.size() > armorId) {
            ArmorModel armor = armorData.get(armorId);
            Double value = armor.getValue() * mult / 100 + Util.intToDoubleShift(add);
            armor.setValue(value);
        }
    }
}
