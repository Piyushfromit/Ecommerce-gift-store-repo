package com.msc.controller;

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
	
	
	

}
