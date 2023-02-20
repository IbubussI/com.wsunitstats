package com.ws.unit.stats;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class UnitStatsApplication {

	public static void main(String[] args) {
		SpringApplication.run(UnitStatsApplication.class, args);
	}

	@Bean
	public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
		return args -> {
			if (args.length > 0 && "parse".equals(args[0])) {
				System.out.println("hello");
			}
		};
	}

}
