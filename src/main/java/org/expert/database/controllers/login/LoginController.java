package org.expert.database.controllers.login;

import org.expert.database.entities.user.UserInput;
import org.expert.database.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {

	@Autowired
	private UserService userService;
	
/*	@RequestMapping(value = "/auto-login" , method= RequestMethod.GET)
	public String autoLogin(@RequestParam("email") String email , @RequestParam(name="continue-site", required=false , defaultValue="http://localhost:8082") String continueSite) {

		User user = userService.findUserByEmail(email);

		System.out.println("Username : " + user.getUsername());
		
		Authentication authentication = new UsernamePasswordAuthenticationToken(user, user.getPassword(), user.getAuthorities());

		SecurityContext context = new SecurityContextImpl();
		context.setAuthentication(authentication);

		SecurityContextHolder.setContext(context);

		return "redirect:"+continueSite;

	}*/
	
	@RequestMapping(value = "/user-register" , method= RequestMethod.POST,
			produces = "application/json")
	@ResponseBody
	public boolean autoLogin(@RequestBody UserInput user) {
		
		return userService.userRegister(user);	

	}
	
}
