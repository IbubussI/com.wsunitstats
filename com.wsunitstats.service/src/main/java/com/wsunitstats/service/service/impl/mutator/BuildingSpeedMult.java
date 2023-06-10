package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ConstructionModel;

import java.util.List;
import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class BuildingSpeedMult implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int mult = toNumber(parameters.get("mult"), 100);
        int building = toNumber(parameters.get("building"), -1);
        List<ConstructionModel> constructions = target.getConstruction();
        if (building == -1) {
            for (ConstructionModel construction : constructions) {
                processBuilding(construction, mult);
            }
        } else {
            for (ConstructionModel construction : constructions) {
                if (construction.getConstructionId() == building) {
                    processBuilding(construction, mult);
                    return;
                }
            }
        }
    }

    private void processBuilding(ConstructionModel construction, int mult) {
        Double constructionSpeed = construction.getConstructionSpeed() * mult / 100;
        construction.setConstructionSpeed(constructionSpeed);
    }
}
