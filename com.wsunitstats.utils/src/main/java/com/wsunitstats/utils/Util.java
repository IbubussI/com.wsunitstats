package com.wsunitstats.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Util {
    private Util() {
        //Utility class
    }

    public static final double TICK_RATE_MULTIPLIER = 50d;
    public static final double FLOAT_VALUE_MULTIPLIER = 1000d;

    public static Double intToDoubleShift(Integer value) {
        if (value == null) {
            return null;
        }
        return value / FLOAT_VALUE_MULTIPLIER;
    }

    public static Double intToDoubleTick(Integer value) {
        if (value == null) {
            return null;
        }
        return value / TICK_RATE_MULTIPLIER;
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
}
