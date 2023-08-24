package com.mscgift.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebSecurity
@ComponentScan
@EnableWebMvc
public class SecurityConfig {
	
	@Bean
	public UserDetailsService userDetailsService(PasswordEncoder encoder) {
		
		UserDetails admin= User.withUsername("piyush")
				.password(encoder.encode("piyush@1234"))
				.roles("ADMIN")
				.build();
		
		UserDetails user= User.withUsername("bittu")
				.password(encoder.encode("bittu@1234"))
				.roles("USER")
				.build();
		
		return new InMemoryUserDetailsManager(admin, user);
	}
	
	@Bean
	public SecurityFilterChain securityFilterChain (HttpSecurity http) throws Exception {
		
	 return	http.csrf().disable()
		    .authorizeHttpRequests()
		    .requestMatchers("/hi").permitAll()
		    .and()
		    .authorizeHttpRequests()
		    .requestMatchers("/hello").authenticated()
		    .and().formLogin()
		    .and().build();
		
		
		    
		
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	
	
//	@Bean
//    public InternalResourceViewResolver resolver() {
//        InternalResourceViewResolver vr = new InternalResourceViewResolver();
//        vr.setPrefix("/WEB-INF/jsps/");
//        vr.setSuffix(".jsp");
//        return vr;
//    }

}
