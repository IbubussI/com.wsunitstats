package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ArmorModel;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class ArmorAddSize implements Mutator {
    private static final int DEFAULT_ID = 0;
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int addVal = toNumber(parameters.get("add"), 0);
        int armor = toNumber(parameters.get("armor"), -1);
        int armor2 = toNumber(parameters.get("armor2"), -1);
        int armor3 = toNumber(parameters.get("armor3"), -1);
        List<ArmorModel> armorData = target.getArmor();
        if (armor != -1) {
            add(armorData, armor, addVal);
            if (armor2 != -1) {
                add(armorData, armor2, addVal);
                if (armor3 != -1) {
                    add(armorData, armor3, addVal);
                }
            }
        }
    }

    private void add(List<ArmorModel> armorData, int armorId, int addVal) {
        if (armorData.size() > armorId) {
            ArmorModel armor = armorData.get(armorId);
            Integer addProbability = armor.getProbability();
            if (armorData.size() == 2 && addVal == 100) {
                // strange case for stone units: n1/100%, n2/0%, armor=1,add=100 => n1/50%, n2/50%
                addProbability = 50;
                armorData.get(DEFAULT_ID).setProbability(50);
            } else {
                addProbability = addProbability + addVal;
            }
            armor.setProbability(addProbability);
        }
    }
}
