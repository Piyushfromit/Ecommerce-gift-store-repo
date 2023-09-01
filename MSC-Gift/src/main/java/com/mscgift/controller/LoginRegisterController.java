package com.mscgift.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.exam.entity.User;
import com.mscgift.entity.Users;
import com.mscgift.repository.UsersRepository;
import com.mscgift.service.UsersService;

@Controller
public class LoginRegisterController {
	
	
	@Autowired
	private UsersService usersService;
	@Autowired
	private UsersRepository userRepository;
	
	
	
	@GetMapping("/register")
	public String getRegisterUser() {
		
		return "register";
		
	}
	
	
	@PostMapping("/register")
	public String PostRegisterUser(@ModelAttribute final Users users,  final Model model) {   // @ModelAttribute   @RequestBody   @ResponseBody   
		System.out.println("register controller");
		
		if (this.userRepository.findByEmail(users.getEmail()).isPresent()) {
            model.addAttribute("registerFailMsg", "User with this email-Id already exist,\r\n"
            		                              + "please try with please login or try with a different mail-Id!");
            return "register";
        }
		final Users regUser = this.usersService.registerUser(users);
        model.addAttribute("registerSuccMsg", "User Registered Succesfully! Please Verify through link sent to Email");
       // this.historyService.saveHistory(request, user, "/register", "User Register");
       
        return "home";
	}
	
	
	

}
