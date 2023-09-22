package com.mscgift.service;

import java.util.List;

import com.mscgift.entity.Users;

public interface UsersService {
	
	public Users registerUser(Users users);
	
	public List<Users> findAllUsers();

}
