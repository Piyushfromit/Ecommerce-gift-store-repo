package com.msc.securityconfiguration;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.servlet.util.matcher.MvcRequestMatcher;
import org.springframework.web.servlet.handler.HandlerMappingIntrospector;

@EnableMethodSecurity
@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	@Autowired
	private DataSource dataSource;
	
	
	
	@Autowired
	public void authManager(AuthenticationManagerBuilder auth) throws Exception{
		
		auth.jdbcAuthentication()
	    .dataSource(dataSource)
	    .passwordEncoder(new BCryptPasswordEncoder())
	    .usersByUsernameQuery("select email, password, enabled from users where email=?")
	    .authoritiesByUsernameQuery("select email, authority from authority where email=?");
		

	}
	
	@Bean
	MvcRequestMatcher.Builder mvc(HandlerMappingIntrospector introspector) {
		return new MvcRequestMatcher.Builder(introspector).servletPath("/");
	}
	

	
	@Bean
	SecurityFilterChain securityFilterChain(HttpSecurity http, MvcRequestMatcher.Builder mvc) throws Exception {
		http.authorizeHttpRequests(auth -> 
			auth
			
			.requestMatchers(mvc.pattern("/**")).hasAuthority("ROLE_ADMIN")
//			.requestMatchers("/admin").hasRole("ROLE_ADMIN")
//			.requestMatchers("/user").hasAnyRole("ROLE_ADMIN", "ROLE_USER")
			.anyRequest().authenticated()
			
		)
		.formLogin(Customizer.withDefaults())
		;
		return http.build();
	}
	
	
//	@Bean
//	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception{
//		
//		http.csrf().disable().authorizeHttpRequests((req) ->req
//				
//				.antMatchers("/", "/register").permitAll()
//				.antMatchers("/admin").hasRole("ADMIN")
//				.antMatchers("/user").hasAnyRole("ADMIN", "USER")
//				.anyRequest().authenticated()
//				
//				).formLogin();
//		
//		return http.build();
//	}
	
	
	@Bean
	public PasswordEncoder passwordEncoder(){
		return new BCryptPasswordEncoder();
	}

}
