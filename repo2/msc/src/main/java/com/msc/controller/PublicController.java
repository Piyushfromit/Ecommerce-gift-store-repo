package com.msc.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PublicController {
	
	
	
	@GetMapping("/")
	@ResponseBody
	public String homeMessage() {
		
	 return "Welcome Piyush";
		 
	}
	
	@GetMapping("/user")
	@ResponseBody
	public String homeuser() {
		
	 return "Welcome user";
		 
	}
	
	
	@GetMapping("/admin")
	@ResponseBody
	public String homeadmin() {
		
	 return "Welcome admin";
		 
	}
	
	@GetMapping("/hi")
	public String jsppagereturn() {
		
		System.out.println("Home Page !"+SecurityContextHolder.getContext().getAuthentication().getAuthorities()); 
		
	 return "home";
		 
	}
	
	
	
	

}
