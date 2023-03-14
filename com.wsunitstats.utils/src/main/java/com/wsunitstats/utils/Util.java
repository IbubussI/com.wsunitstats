package com.wsunitstats.utils;

import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.UnaryOperator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Util {
    private Util() {
        //Utility class
    }

    public static final Pattern LOCALIZATION_KEY_PATTERN = Pattern.compile("<\\*[a-zA-Z0-9/]+>");
    public static final double TICK_RATE_MULTIPLIER = 50d;
    public static final double SHIFT_VALUE_MULTIPLIER = 1000d;
    public static final double SPEED_VALUE_MULTIPLIER = 1_000_000d;
    public static final double PERCENT_VALUE_MULTIPLIER = 10d;
    public static final double POPULATION_VALUE_MULTIPLIER = 10d;
    public static final int LONG_SIZE = 64;

    public static Double intToDoubleShift(Integer value) {
        return divide(value, SHIFT_VALUE_MULTIPLIER);
    }

    public static Double intToDoubleTick(Integer value) {
        return divide(value, TICK_RATE_MULTIPLIER);
    }

    public static Double intToDoubleSpeed(Integer value) {
        return divide(value, SPEED_VALUE_MULTIPLIER);
    }

    public static Double intToPercent(Integer value) {
        return divide(value, PERCENT_VALUE_MULTIPLIER);
    }

    public static Double intToSupply(Integer value) {
        return divide(value, POPULATION_VALUE_MULTIPLIER);
    }

    public static int sum(List<Integer> list) {
        return list.stream()
                .filter(Objects::nonNull)
                .mapToInt(Integer::intValue)
                .sum();
    }

    public static List<Integer> add(List<Integer> intList1, List<Integer> intList2) {
        if (intList1.size() != intList2.size()) {
            throw new IllegalArgumentException("Given lists should be the same size");
        }
        List<Integer> result = new ArrayList<>();
        for (int i = 0; i < intList1.size(); ++i) {
            result.add(intList1.get(i) + intList2.get(i));
        }
        return result;
    }

    /**
     * Check if two lists are equal. Default equals behavior except
     * if one of lists is null and other is empty it returns true instead of false.
     */
    public static boolean equalsNullable(List<?> list1, List<?> list2) {
        if (list1 != null) {
            if (list2 != null) {
                return Objects.equals(list1, list2);
            } else {
                return list1.isEmpty();
            }
        } else {
            if (list2 != null) {
                return list2.isEmpty();
            } else {
                return true;
            }
        }
    }

    /**
     * Replaces all occurrences of localization pattern in given input string
     * with value, returned by given localization function.
     * Removes all curly braces from localized values.
     *
     * @param input                string to be localized
     * @param localizationFunction function to get localization value by key, found in given input
     * @return localized string
     */
    public static String localizeAll(String input, UnaryOperator<String> localizationFunction) {
        Matcher matcher = LOCALIZATION_KEY_PATTERN.matcher(input);
        StringBuilder output = new StringBuilder();
        while (matcher.find()) {
            String localized = localizationFunction.apply(matcher.group());
            String cleared = clearCurlyBraces(localized);
            matcher.appendReplacement(output, cleared);
        }
        matcher.appendTail(output);
        return output.toString();
    }

    /**
     * Removes all curly braces (both left and right) from given input string
     */
    public static String clearCurlyBraces(String input) {
        return input.replaceAll("[{}]", StringUtils.EMPTY);
    }

    public static int getLastPositiveBitIndex(int bits) {
        if (bits == 0) {
            return 0;
        }
        int i = 0;
        for (; bits != 1; ++i) {
            bits = bits >> 1;
        }
        return i;
    }

    public static List<Integer> getPositiveBitIndices(long bits) {
        List<Integer> indices = new ArrayList<>();
        for (int i = 0; i < LONG_SIZE; ++i) {
            if ((bits & 1L << i) != 0) {
                indices.add(i);
            }
        }
        return indices;
    }

    private static Double divide(Integer value, double divider) {
        if (value == null) {
            return null;
        }
        return value / divider;
    }
}
