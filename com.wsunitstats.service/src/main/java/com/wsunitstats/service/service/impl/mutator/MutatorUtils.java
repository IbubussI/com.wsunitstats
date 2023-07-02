package com.wsunitstats.service.service.impl.mutator;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;

public class MutatorUtils {
    private MutatorUtils() {
        // utility class
    }

    public static double toNumber(String input, double defaultValue) {
        if (StringUtils.isBlank(input)) {
            return defaultValue;
        }
        try {
            return Double.parseDouble(input);
        } catch (NumberFormatException ex) {
            return defaultValue;
        }
    }

    public static int toNumber(String input, int defaultValue) {
        if (StringUtils.isBlank(input)) {
            return defaultValue;
        }
        try {
            return Integer.parseInt(input);
        } catch (NumberFormatException ex) {
            return defaultValue;
        }
    }

    public static boolean toBool(String input, boolean defaultValue) {
        try {
            if (input == null) {
                return defaultValue;
            }
            if (NumberUtils.isCreatable(input)) {
                return NumberUtils.createNumber(input).doubleValue() != 0;
            }
            return Boolean.parseBoolean(input);
        } catch (NumberFormatException ex) {
            return defaultValue;
        }
    }
}
