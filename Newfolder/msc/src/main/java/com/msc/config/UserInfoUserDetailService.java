package com.msc.config;

import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import com.msc.entity.UserInfo;
import com.msc.repo.UserInfoRepository;





@Component
public class UserInfoUserDetailService implements UserDetailsService {

	@Autowired(required=true)
	public UserInfoRepository userInfoRepo;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		Optional<UserInfo> userInfo  = userInfoRepo.findByName(username);
		return userInfo.map(UserInfoUserDetails::new)
		.orElseThrow(()->new UsernameNotFoundException("UserNameNotFound"+username));
	
	}

}
