package com.wsunitstats.service.service.impl.mutator;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.MovementModel;
import com.wsunitstats.utils.Util;
import org.apache.commons.lang3.StringUtils;

import java.util.Map;

public class MoveSpeedMutator implements Mutator {
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

    private Double toNumber(String input, Double defaultValue) {
        if (StringUtils.isBlank(input)) {
            return defaultValue;
        }
        try {
            return Double.parseDouble(input);
        } catch (NumberFormatException ex) {
            return defaultValue;
        }
    }

    private Integer toNumber(String input, Integer defaultValue) {
        if (StringUtils.isBlank(input)) {
            return defaultValue;
        }
        try {
            return Integer.parseInt(input);
        } catch (NumberFormatException ex) {
            return defaultValue;
        }
    }
}
