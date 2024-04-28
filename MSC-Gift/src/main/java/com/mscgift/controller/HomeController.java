package com.mscgift.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;




@Controller
public class HomeController {
	
	
	
	@GetMapping("/")
	public String homePage() {
		System.out.println("Home page");
		return "index";
		
	}
	
	
	@GetMapping("/about-us")
	public String aboutUs() {
		System.out.println("Returned to home page ");
		return "about-us";
		
	}
	
	
	
	@GetMapping("/contacts_us")
	public String contacts_us() {
		System.out.println("Returned to home page ");
		return "contact-us";
		
	}

}
