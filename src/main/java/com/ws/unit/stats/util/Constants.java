package com.ws.unit.stats.util;

public class Constants {

    private Constants() {
        // Utility class
    }

    public static final int TICK_RATE = 50;
    public static final double FLOAT_VALUE_MULTIPLIER = 1000d;

    public static class UnitTypes {

        private UnitTypes() {
            // Utility class
        }

        public static final String WORKER = "worker";
        public static final String COMBAT_GROUND = "combat-ground";
        public static final String COMBAT_AIR = "combat-air";
        public static final String COMBAT_WATER = "combat-water";
        public static final String BUILDING = "building";
    }
}
