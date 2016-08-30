package org.expert.database.entities.user;

import org.springframework.security.core.GrantedAuthority;

public class Role implements GrantedAuthority{

	private static final long serialVersionUID = 1L;

	private String role;
	
	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Role(String role) {
		super();
		this.role = role;
	}


	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String getAuthority() {
		// TODO Auto-generated method stub
		return role;
	}

	@Override
	public String toString() {
		return  role; 
	}	
	
	
}