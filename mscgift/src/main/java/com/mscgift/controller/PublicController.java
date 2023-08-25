package com.mscgift.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class PublicController {
	
	
	
	@GetMapping("/")
	@ResponseBody
	public String firstMessage() {
		
		return "This is the first message of application";
		
	}
	
	@GetMapping("/hi")
	public String firstjsp() {
		
		return "index";
		
	}
	
	@GetMapping("/admin/message")
	@ResponseBody
	public String firstAdminMessage() {
		
		return "this is admin message";
		
	}
	@GetMapping("/admin/jsp")
	public String firstindexadmin() {
		
		return "adminjsp";
		
	}
	@GetMapping("/user/message")
	@ResponseBody
	public String firstUserMessage() {
		
		return "this is user message";
		
	}
	@GetMapping("/user/jsp")
	public String firstindexuser() {
		
		return "userjsp";
		
	}
	
	@GetMapping("/login")
	public String loginPage()
	{
		return "login";
	}
//	
//	@PostMapping("/login")
//	public void loginUser()
//	{
//		System.out.println("userLogin");
//	}


}
