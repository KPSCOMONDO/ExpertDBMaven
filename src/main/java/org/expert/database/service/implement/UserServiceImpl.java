package org.expert.database.service.implement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.expert.database.entities.user.Role;
import org.expert.database.entities.user.User;
import org.expert.database.entities.user.UserInput;
import org.expert.database.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private String WS_URL; 
	 
	@Override
	public User findUserByEmail(String email) {
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		
		ResponseEntity<Map> response = rest.exchange(WS_URL+"/user/user-login?email="+email, HttpMethod.POST , request , Map.class) ;
		
		Map<String, Object> map = (HashMap<String, Object>)response.getBody();
		
		if(map.get("DATA") != null){
			Map<String , Object> data = (HashMap<String , Object>) map.get("DATA");
			User u = new User();
			u.setId((Integer)data.get("USERID"));
			u.setUsername((String)data.get("USERNAME"));
			u.setPassword((String)data.get("USERPASSWORD"));
			u.setGender((String)data.get("USERGENDER"));
			u.setEmail((String)data.get("USEREMAIL"));
			u.setImage((String)data.get("USERIMAGE"));
			u.setActive((boolean)data.get("ISACTIVE"));
			List<Role> roles = new ArrayList<Role>();
			roles.add(new Role((String)data.get("USERROLE")));
			u.setRoles(roles);
			System.out.println(u);
			return u;
		}
		
		return null;
	}

	@Override
	public boolean userRegister(UserInput user) {
		
		HttpEntity<Object> request = new HttpEntity<Object>(user,header);
		
		ResponseEntity<Map> response = rest.exchange(WS_URL+"/user/user-register", HttpMethod.POST , request , Map.class) ;
		
		Map<String, Object> map = (HashMap<String, Object>)response.getBody();
		
		if(map.get("DATA") != null){
			Map<String , Object> data = (HashMap<String , Object>) map.get("DATA");
			return (boolean)map.get("STATUS");
		}
		return false;
	}

}
