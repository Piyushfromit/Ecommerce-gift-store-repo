package com.msc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.msc.entity.UserInfo;
import com.msc.service.SpringService;


@Controller
public class AdminController {
	
	@Autowired
	private SpringService service;
	
	@GetMapping("/")
	public String admin()
	{
		return "index";
	}
	
	@GetMapping("/register")
	public String registerUser(){
		return "register";
	}
	
	@PostMapping("/register")
	public String registerUser(UserInfo userInfo)
	{
		System.out.println("registered");
		this.service.addUser(userInfo);
		return "register";
	}
	
	@GetMapping("/login")
	String login() {
		return "login";
	}
	
	@GetMapping("/welcome")
	public String afterlogin(){
		return "home";
	}
	
	

}
