package org.expert.database.service;

import org.expert.database.entities.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailService implements UserDetailsService {

	@Autowired
	private UserService userService;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
				
		User user=userService.findUserByEmail(userName);
		
		if(user == null){
			System.out.println("User not found!");
			throw new UsernameNotFoundException("Username not found!");
		}else{
			//System.out.println(user.toString());
		}
		
		return user;
	}

}