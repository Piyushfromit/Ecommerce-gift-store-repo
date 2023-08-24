package com.msc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })
@Configuration
@ComponentScan(basePackages = "com.msc.repo") // Add packages to scan here
public class MscApplication {

	public static void main(String[] args) {
		SpringApplication.run(MscApplication.class, args);
	}
	
	
	
	

}
