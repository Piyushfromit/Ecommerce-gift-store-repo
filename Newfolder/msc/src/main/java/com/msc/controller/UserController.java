package com.msc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
	
	
//	@GetMapping("/")
//	@ResponseBody
//	public String message() {
//		
//		return "Hello Piyush";
//		
//	}
	
	@GetMapping("/")
	public String message() {
		
		return "index";
		
	}

}
