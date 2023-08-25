package com.msc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.msc.entity.Users;
import com.msc.repository.UsersRepository;
import com.msc.service.UsersService;





@Controller
public class LoginSignupController {
	
	
	@Autowired
	private UsersRepository usersRepository;
	
	@Autowired
	private  UsersService usersService;
	
	
	@PostMapping("/register")
	@ResponseBody
	public String registerUser(@RequestBody Users user ) {
		System.out.println("register controller");
		if(usersRepository.findByEmail(user.getEmail()).isPresent()) {
			return "MailId already Exist";
		}
		final Users regUser = this.usersService.registerUser(user);
		
		return "<h1> User Saved </h1>";
	}
	
	

	
	
	
	
	
	
}
