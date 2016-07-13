package org.expert.home;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
//@Configuration
//@EnableAutoConfiguration
//@ComponentScan({"org.expert.start","org.expert.home"})
public class ExpertDatabaseApplication {

	public static void main(String[] args) {
		SpringApplication.run(ExpertDatabaseApplication.class, args);
	}
}
