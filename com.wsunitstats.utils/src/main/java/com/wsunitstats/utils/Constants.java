package com.wsunitstats.utils;

public class Constants {
    private Constants() {
        // Utility class
    }

    private static final String UNDEF = "N/A";

    public static final String LOCALIZATION_MULTI_KEY_DELIMITER = "|";
    public static final String LOCALIZATION_MULTI_KEY_DELIMITER_REGEX = "\\|";

    public static final String LOCALIZATION_MULTI_VALUE_DELIMITER = "|";
    public static final String LOCALIZATION_MULTI_VALUE_DELIMITER_REGEX = "\\|";

    public static final String LOCALIZATION_INDEX_DELIMITER = "/";
    public static final String CLOSING_ANGLE_BRACKET = ">";

    public static final String BASIC_DAMAGE_TYPE = "Base";
    public static final String GENERIC_UNIT_TAG = "Unit";

    public enum AbilityType {
        UNDEFINED(-1, UNDEF),
        CREATE_UNIT(0, "Create unit"),
        RESEARCH(1, "Research"),
        TRANSFORM(2, "Transform"),
        CREATE_ENV(3, "Create env"),
        BUFF(4, "Buff");

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

    public enum DamageAreaType {
        // TODO: add (sessions/localization) file
        // TODO: replace this enum with list of <*damageArea> keys in LocalizationKeyModel
        UNDEFINED(-1, UNDEF),
        SINGLE(0, "Single target"),
        AREA(1, "Area"),
        FRONTAL(2, "In frontal area");

        private final int type;
        private final String name;

        DamageAreaType(int type, String name) {
            this.type = type;
            this.name = name;
        }

        public int getType() {
            return type;
        }

        public String getName() {
            return name;
        }

        public static DamageAreaType get(int type) {
            for (DamageAreaType abilityType : DamageAreaType.values()) {
                if (abilityType.getType() == type) {
                    return abilityType;
                }
            }
            return UNDEFINED;
        }
    }
}
