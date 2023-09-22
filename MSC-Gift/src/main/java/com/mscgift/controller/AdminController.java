package com.mscgift.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mscgift.entity.Users;
import com.mscgift.service.UsersService;

import jakarta.servlet.http.HttpSession;



@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	public UsersService usersService;
	
	
	
	
	@GetMapping("/home")
	public String adminDashboard() {
		return "admin/index";
	}
	
	
	@GetMapping("/allusers")
	public String getAllUsers( final HttpSession session, final Model model) {
		
		List<Users> users = usersService.findAllUsers();
		model.addAttribute("userList", users);
		for (Iterator iterator = users.iterator(); iterator.hasNext();) {
			Users users2 = (Users) iterator.next();
			
			System.out.println(users2.getName());
			
		}
		
		return "admin/all-users";
	}
	
	
	
	
	
	
	
}
