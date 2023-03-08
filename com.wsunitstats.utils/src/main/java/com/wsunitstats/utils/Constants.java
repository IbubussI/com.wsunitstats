package com.wsunitstats.utils;

public class Constants {
    private Constants() {
        // Utility class
    }

    public static final String LOCALIZATION_MULTI_KEY_DELIMITER = "|";
    public static final String LOCALIZATION_MULTI_KEY_DELIMITER_REGEX = "\\|";

    public static final String LOCALIZATION_MULTI_VALUE_DELIMITER = "|";
    public static final String LOCALIZATION_MULTI_VALUE_DELIMITER_REGEX = "\\|";

    public static final String LOCALIZATION_INDEX_DELIMITER = "/";
    public static final String CLOSING_ANGLE_BRACKET = ">";

    public enum AbilityType {
        UNDEFINED(-1, "undefined"),
        CREATE_UNIT(0, "createUnit"),
        RESEARCH(1, "research"),
        TRANSFORM(2, "transform"),
        CREATE_ENV(3, "createEnv"),
        BUFF(4, "buff");

        private final int type;
        private final String name;

        AbilityType(int type, String name) {
            this.type = type;
            this.name = name;
        }

        public int getType() {
            return type;
        }

        public String getName() {
            return name;
        }

        public static AbilityType get(int type) {
            for (AbilityType abilityType : AbilityType.values()) {
                if (abilityType.getType() == type) {
                    return abilityType;
                }
            }
            return UNDEFINED;
        }
    }
}
