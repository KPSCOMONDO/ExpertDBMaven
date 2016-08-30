package org.expert.database.service;

import org.expert.database.entities.user.User;

public interface UserService {

	public User findUserByEmail(String email);
}
