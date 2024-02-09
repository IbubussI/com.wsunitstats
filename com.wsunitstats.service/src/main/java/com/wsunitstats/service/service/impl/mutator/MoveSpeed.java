package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.MovementModel;
import com.wsunitstats.utils.Utils;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class MoveSpeed implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        int add = toNumber(parameters.get("add"), 0);
        int mult = toNumber(parameters.get("mult"), 100);
        int addR = toNumber(parameters.get("addRotation"), 0);
        int multR = toNumber(parameters.get("multRotation"), 100);
        MovementModel movement = target.getMovement();
        Integer currentSpeed = movement.getSpeed();
        movement.setSpeed(currentSpeed * mult / 100 + add);
        Double currentRotationSpeed = movement.getRotationSpeed();
        movement.setRotationSpeed(currentRotationSpeed * multR / 100 + Utils.intToDoubleShift(addR));
    }
}
