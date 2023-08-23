package com.gifts.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.gifts.entity.UserInfo;
import com.gifts.service.SpringService;

@RestController
public class PublicController {


	@Autowired
	private SpringService service;
	
	@GetMapping("/")
	public String firstMessage()
	{
		return "Hello This is first message piyush";
	}
	
	@GetMapping("/message")
	public String message()
	{
		return " message piyush";
	}
	
	@GetMapping("/admin")
	public String admin()
	{
		return "Hello User";
	}
	
	@GetMapping("/user")
	public String user()
	{
		return "Hello Admin";
	}
	
	@GetMapping("admin/review")
	public String adminReview()
	{
		return "Valid Username and Password";
	}
	@PostMapping("/new")
	public String addNewUser(@RequestBody UserInfo userInfo)
	{
		return service.addUser(userInfo);
		
	}
}
