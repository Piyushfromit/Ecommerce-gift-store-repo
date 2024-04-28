package com.mscgift.controller;

import java.util.Optional;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import com.mscgift.entity.Users;
import com.mscgift.repository.UsersRepository;
import com.mscgift.service.MailService;
import com.mscgift.service.UsersService;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginRegisterController {

	@Autowired
	private MailService mailService;
	@Autowired
	private UsersService usersService;
	@Autowired
	private UsersRepository userRepository;


	@GetMapping("/")
	public String homePage(final Model model) {

		/*Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!authentication.getName().equalsIgnoreCase("anonymousUser")
				&& authentication.getAuthorities().stream().anyMatch(a -> a.getAuthority().equals("ROLE_ADMIN"))) {
			Users users = this.userRepository.findByEmail(authentication.getName()).get();
			model.addAttribute("user", users);
		}*/
		System.out.println("Home page");
		return "index";
	}


	@GetMapping("/login")
	public String getLogin() {

		return "login";
	}
	
	@GetMapping("/register")
	public String getRegister() {
		
		return "register";
	}
	
	@PostMapping("/register")
	public String postRegister(@ModelAttribute final Users users, final HttpSession session, final Model model) {   // @ModelAttribute   @RequestBody   @ResponseBody
		if (this.userRepository.findByEmail(users.getEmail()).isPresent()) {
            model.addAttribute("registerFailMsg", "User with "+users.getEmail()+" already exist,\r\n" + "please login!");
            return "register";
        }
		// Send OTP To User Mail-Id
		String userMailId = users.getEmail();
        String otp = generateRandom4DigitOTP();
		System.out.println("User Mail ID: " + userMailId);
		System.out.println("Sent OTP: " + otp);
		mailService.sendOTPToUserMailId(userMailId, otp);
        session.setAttribute("userToRegister", users);
        session.setAttribute("otpSentByCode", otp);
        // this.historyService.saveHistory(request, user, "/register", "User Register");
        return "otpform";
	}

	public String generateRandom4DigitOTP() {
		Random random = new Random();
		int min = 1000; // Minimum 4-digit number
		int max = 9999; // Maximum 4-digit number
		int otp = random.nextInt(max - min + 1) + min;
		return Integer.toString(otp);
	}
	
	@PostMapping("/verifyotp")
    public String postVerifyOTP(@ModelAttribute(name = "otp") String otpFilledByUser, final Model model, final HttpSession session) {
		Users user = (Users) session.getAttribute("userToRegister");
		String otpSentByCode = (String)session.getAttribute("otpSentByCode");
		System.out.println("User Filled OTP: " + otpFilledByUser);

		if(otpFilledByUser.equals(otpSentByCode)) {
			final Users regUser = this.usersService.registerUser(user);
			model.addAttribute("registerSuccessMsg", "User with "+user.getEmail()+". "+ "successfully registered");
            System.out.println("User successfully Registered");
			session.removeAttribute("userToRegister");
			session.removeAttribute("otpSentByCode");
		}
		return "register";
    }

	
	
	
}
