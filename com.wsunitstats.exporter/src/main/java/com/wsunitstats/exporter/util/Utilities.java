package com.wsunitstats.exporter.util;

public class Utilities {
    private Utilities() {
        //Utility class
    }

    public static Double intToDoubleShift(Integer value) {
        if (value == null) {
            return null;
        }
        return value / Constants.FLOAT_VALUE_MULTIPLIER;
    }

    public static Double intToDoubleTick(Integer value) {
        if (value == null) {
            return null;
        }
        return value / Constants.TICK_RATE_MULTIPLIER;
    }
}
