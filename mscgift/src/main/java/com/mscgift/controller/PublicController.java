package com.mscgift.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class PublicController {
	
	
	
	@GetMapping("/")
	@ResponseBody
	public String firstMessage() {
		
		return "This is the first message";
		
	}
	
	
	@GetMapping("/hi")
	public String firstjsp() {
		
		return "index";
		
	}
	
	@GetMapping("/hello")
	public String firstindex() {
		
		return "home";
		
	}


}
