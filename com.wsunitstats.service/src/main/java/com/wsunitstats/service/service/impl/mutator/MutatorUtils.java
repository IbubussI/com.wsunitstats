package com.wsunitstats.service.service.impl.mutator;

import org.apache.commons.lang3.StringUtils;

public class MutatorUtils {
    private MutatorUtils() {
        // utility class
    }

    public static double toNumber(String input, Double defaultValue) {
        if (StringUtils.isBlank(input)) {
            return defaultValue;
        }
        try {
            return Double.parseDouble(input);
        } catch (NumberFormatException ex) {
            return defaultValue;
        }
    }

    public static int toNumber(String input, Integer defaultValue) {
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
