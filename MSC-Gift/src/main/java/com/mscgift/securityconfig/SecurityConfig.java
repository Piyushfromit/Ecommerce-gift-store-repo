package com.mscgift.securityconfig;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;



@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	
	
	@Bean
	public UserDetailsService userDetailsService() {
		
		 return new UsersUserDetailsService();
		 
	}
	
	
	@Bean
	public SecurityFilterChain securityFilterChain (HttpSecurity http)throws Exception {
		http
        .authorizeHttpRequests(authorizeRequests ->
            authorizeRequests
                .requestMatchers("/","/hi","/register","/jsp").permitAll()
                .requestMatchers("/admin/**").hasRole("ADMIN") // Requires role "ADMIN" for /admin/**
                .requestMatchers("/user/**").hasRole("USER") // Requires role "USER" for /user/**
                .anyRequest().permitAll()
        )
        .formLogin(formLogin -> formLogin.loginPage("/login") .permitAll() )
        .formLogin(formLogin -> formLogin
        		.defaultSuccessUrl("/", true)
        		.successHandler((request, response, authentication) ->{
        	    if (authentication.getAuthorities().stream()
                  .anyMatch(grantedAuthority -> grantedAuthority.getAuthority().equals("ROLE_ADMIN"))) {
                   response.sendRedirect("/admin/jsp"); // Redirect to admin dashboard for ROLE_ADMIN
                  } else {
                   response.sendRedirect("/"); // Redirect to user dashboard for ROLE_USER
                  }	
        		}) )
        .logout(logout ->  logout  .permitAll())
        .csrf(csrf -> csrf.disable());

        return http.build();
	}

      
//        .formLogin(formLogin -> 
//		 formLogin.loginPage("/login").permitAll())
//		 .formLogin(formLogin ->
//		 formLogin.defaultSuccessUrl("/welcome") );
        
        
//		return http
//				.csrf().disable()
//				.authorizeHttpRequests()
//				.requestMatchers("/","/hi","/register").permitAll()
//				.and()
//				.authorizeHttpRequests()
//				.requestMatchers("/admin**").authenticated()
//				.and().formLogin()
//				.and().build();
		
    	
	
	
	
	@Bean PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	
	@Bean
	public AuthenticationProvider authenticationProvider(){
		
		DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
		authenticationProvider.setUserDetailsService(userDetailsService());
		authenticationProvider.setPasswordEncoder(passwordEncoder());
		
		return authenticationProvider;
		
	}
	

}
