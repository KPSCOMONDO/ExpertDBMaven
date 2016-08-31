package org.expert.database.service;

import org.expert.database.entities.user.User;
import org.expert.database.entities.user.UserInput;

public interface UserService {

	public User findUserByEmail(String email);
	
	public boolean userRegister(UserInput user);
}
