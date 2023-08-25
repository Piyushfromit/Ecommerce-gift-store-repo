package com.msc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;




@Controller
public class UserPrivateController {
	
	    @GetMapping("/user")
	    @ResponseBody
        public String usermessage()
        {
	    	System.out.println("Welcome user..");
	    	return "welcome user !";
        }
	    
	    
	    @GetMapping("/admin")
	    @ResponseBody
        public String adminmessage()
        {
	    	System.out.println("Welcome admin..");
	    	return "welcome admin !";
        }
	    
	    @GetMapping("/admin/jsp")
	    public String adminjsp()
        {
	    	System.out.println("Welcome admin..");
	    	return "adminjsp";
        }
	    
	    @GetMapping("/user/jsp")
	    public String userjsp()
        {
	    	System.out.println("Welcome user..");
	    	return "userjsp";
        }
	    
	    
	    
	    
        

}
