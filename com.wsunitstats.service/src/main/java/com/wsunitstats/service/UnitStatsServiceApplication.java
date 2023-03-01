package com.wsunitstats.service;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;


@SpringBootApplication
public class UnitStatsServiceApplication {
    public static void main(String[] args) {
        SpringApplication.run(UnitStatsServiceApplication.class, args);
    }

    @Component
    public static class TestRunner implements CommandLineRunner {

        @Override
        public void run(String... args) {

        }
    }
}