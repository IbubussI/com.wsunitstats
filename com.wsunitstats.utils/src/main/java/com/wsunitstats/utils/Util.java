package com.wsunitstats.utils;

import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.UnaryOperator;
import java.util.regex.Matcher;

public class Util {
    private Util() {
        //Utility class
    }

    public static Double intToDoubleShift(Integer value) {
        return divide(value, Constants.SHIFT_VALUE_MULTIPLIER);
    }

    public static Double intToDoubleTick(Integer value) {
        return divide(value, Constants.TICK_RATE_MULTIPLIER);
    }

    public static Double intToDoubleSpeed(Integer value) {
        return divide(value, Constants.PROJECTILE_SPEED_VALUE_MULTIPLIER);
    }

    public static Double intToPercent(Integer value) {
        return divide(value, Constants.PERCENT_VALUE_MULTIPLIER);
    }

    public static Double intToSupply(Integer value) {
        return divide(value, Constants.POPULATION_VALUE_MULTIPLIER);
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
        Matcher matcher = Constants.LOCALIZATION_KEY_PATTERN.matcher(input);
        StringBuilder output = new StringBuilder();
        while (matcher.find()) {
            String localized = localizationFunction.apply(matcher.group());
            matcher.appendReplacement(output, localized);
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

    public static List<Integer> getPositiveBitIndices(long bits) {
        List<Integer> indices = new ArrayList<>();
        for (int i = 0; i < Constants.LONG_SIZE; ++i) {
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
