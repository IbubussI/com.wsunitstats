package com.wsunitstats.service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EntityScan({"com.wsunitstats.domain", "com.wsunitstats.domain.*"})
@ComponentScan({"com.wsunitstats.*"})
public class UnitStatsServiceApplication {
    public static void main(String[] args) {
        SpringApplication.run(UnitStatsServiceApplication.class, args);
    }
}