package com.mscgift.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.core.userdetails.User;


@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	@Bean
	public UserDetailsService userDetailsService(PasswordEncoder encoder) {
		
		UserDetails admin= User.withUsername("piyush")
				.password(encoder.encode("piyush@123"))
				.roles("ADMIN")
				.build();
		
		UserDetails user= User.withUsername("bittu")
				.password(encoder.encode("bittu@123"))
				.roles("USER")
				.build();
		
		return new InMemoryUserDetailsManager(admin, user);
	}
	
	@Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            .authorizeHttpRequests(authorizeRequests ->
                authorizeRequests
                    .requestMatchers("/","/hi").permitAll()
                    .requestMatchers("/admin/**").hasRole("ADMIN") // Requires role "ADMIN" for /admin/**
                    .requestMatchers("/user/**").hasRole("USER") // Requires role "USER" for /user/**
                    .anyRequest().permitAll()
            )
            .formLogin(formLogin -> formLogin .permitAll() )
            .logout(logout ->  logout  .permitAll());

        return http.build();
    }

	
// harshit	
//	@Bean
//	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception
//	{
//		http
//		.authorizeHttpRequests((requests)->requests.requestMatchers("/admin/**").authenticated().anyRequest()
//				.permitAll()).formLogin((form) -> form
//						.permitAll())
//		                .logout((logout) -> logout.permitAll());
//		
//		
//		return http.build();
//	}
	

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	
	
	
}
