package org.epxert.startup;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableAutoConfiguration
@ComponentScan(basePackages = {"org.epxert.startup","org.expert.expert","org.expert.home","org.expert.authentation","org.expert.admin"})

public class ExpertDatabaseApplication {

	public static void main(String[] args) {
		SpringApplication.run(ExpertDatabaseApplication.class, args);
	}
}
