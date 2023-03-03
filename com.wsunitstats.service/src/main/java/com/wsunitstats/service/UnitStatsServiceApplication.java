package com.wsunitstats.service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan({"com.wsunitstats.model", "com.wsunitstats.model.*"})
public class UnitStatsServiceApplication {
    public static void main(String[] args) {
        SpringApplication.run(UnitStatsServiceApplication.class, args);
    }
}