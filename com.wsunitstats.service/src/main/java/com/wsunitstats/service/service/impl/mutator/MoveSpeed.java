package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.MovementModel;
import com.wsunitstats.utils.Util;

import java.util.Map;

import static com.wsunitstats.service.service.impl.mutator.MutatorUtils.toNumber;

public class MoveSpeed implements Mutator {
    @Override
    public void mutate(UnitModel target, Map<String, String> parameters) {
        Integer add = toNumber(parameters.get("add"), 0);
        Integer mult = toNumber(parameters.get("mult"), 100);
        Integer addR = toNumber(parameters.get("addRotation"), 0);
        Integer multR = toNumber(parameters.get("multRotation"), 100);
        MovementModel movement = target.getMovement();
        Integer currentSpeed = movement.getSpeed();
        movement.setSpeed(currentSpeed * mult / 100 + add);
        Double currentRotationSpeed = movement.getRotationSpeed();
        movement.setRotationSpeed(currentRotationSpeed * multR / 100 + Util.intToDoubleShift(addR));
    }
}
