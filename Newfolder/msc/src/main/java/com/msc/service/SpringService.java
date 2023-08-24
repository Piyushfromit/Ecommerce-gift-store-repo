package com.msc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.msc.entity.UserInfo;
import com.msc.repo.UserInfoRepository;

@Service
public class SpringService {
	
	
	@Autowired(required=true)
	private UserInfoRepository userInfoRepo;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	public String addUser(UserInfo userInfo)
	{
		userInfo.setPassword(passwordEncoder.encode(userInfo.getPassword()));
		userInfoRepo.save(userInfo);
		return "User Added To System";
		
	}

}
