package com.mscgift.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;




@Controller
public class HomeController {
	
	
	
	@GetMapping("/")
	public String HomePage() {
		System.out.println("Returned to home page ");
		return "index";
		
	}
	
	
	

}
