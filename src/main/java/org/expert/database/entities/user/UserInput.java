package org.expert.database.entities.user;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

public class UserInput {
	
	@JsonProperty("NAME")
	private String user_name;
	
	@JsonProperty("PASSWORD")
	private String user_password;
	
	@JsonProperty("GENDER")
	private String user_gender;
	
	@JsonProperty("EMAIL")
	private String user_email;

	@JsonProperty("IMAGE")
	private String user_image;
	
	@JsonProperty("DEPARTMENT")
	private String user_department;
	
	@JsonProperty("UNIVERSITY")
	private String user_university;
	
	@JsonIgnore
	private String user_role;

	public UserInput() {
		super();
		user_role="ROLE_USER";
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_password() {
		return new BCryptPasswordEncoder().encode(user_password);
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_image() {
		return user_image;
	}

	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}

	public String getUser_department() {
		return user_department;
	}

	public void setUser_department(String user_department) {
		this.user_department = user_department;
	}

	public String getUser_university() {
		return user_university;
	}

	public void setUser_university(String user_university) {
		this.user_university = user_university;
	}

	public String getUser_role() {
		return user_role;
	}

	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}

}
