package com.mscgift.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mscgift.entity.Users;
import com.mscgift.repository.UsersRepository;
import com.mscgift.service.MailService;
import com.mscgift.service.UsersService;

@Controller
public class LoginRegisterController {
	
	
	@Autowired
	private MailService mailService;
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
		if (this.userRepository.findByEmail(users.getEmail()).isPresent()) {
            model.addAttribute("registerFailMsg", "User with this email-Id already exist,\r\n" + "please login!");
            return "register";
        }
		model.addAttribute("userAboutToRegister", users );
		
		// Send OTP To User Mail-Id
		String userMailId = users.getEmail();
        int otp = generateRandom6DigitOTP();
        mailService.sendOTPToUserMailId(userMailId, otp);
        model.addAttribute("otpOfuserAboutToRegister", users );
		final Users regUser = this.usersService.registerUser(users);
        
        // this.historyService.saveHistory(request, user, "/register", "User Register");
       
        return "otpform";
	}
	
	public int generateRandom6DigitOTP() {
        Random random = new Random();
        int min = 100000; 
        int max = 999999; 
        int otp = random.nextInt(max - min + 1) + min;
        return otp;
    }
	
	@PostMapping("/verifyotp")
    public String PostVerifyOTP(@RequestParam(name = "otp") String otp, Model model) {
         System.out.println("User Entered OTP: " + otp);
         model.addAttribute("userEnteredOTP", otp);
         return "home";   // redirect:/home
    }


	
}
