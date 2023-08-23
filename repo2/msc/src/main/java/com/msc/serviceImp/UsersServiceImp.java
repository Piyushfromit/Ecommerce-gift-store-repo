package com.msc.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.msc.entity.Authority;
import com.msc.entity.Users;
import com.msc.repository.AuthorityRepository;
import com.msc.repository.UsersRepository;
import com.msc.service.UsersService;




//@Service
public class UsersServiceImp  implements UsersService{

	@Autowired
    private UsersRepository usersRepository;
	
	@Autowired
    private AuthorityRepository roleRepository;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public Users registerUser(Users user) {
		user.setEnabled(1);
		Authority roleClass = new Authority();
		roleClass.setEmail(user.getEmail());
		roleClass.setAuthority("ROLE_USER");
		String password = user.getPassword();
	    user.setPassword(passwordEncoder.encode(password));
		usersRepository.save(user);
		roleRepository.save(roleClass);
		return user;
	}
	
	
	
	

}
