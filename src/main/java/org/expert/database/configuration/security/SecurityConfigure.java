package org.expert.database.configuration.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfigure extends WebSecurityConfigurerAdapter {

	
    @Autowired
    @Qualifier(value = "ajaxAuthenticationSuccessHandler")
    private AjaxAuthenticationSuccessHandler ajaxAuthenticationSuccessHandler;

    @Autowired
    @Qualifier(value = "ajaxAuthenticationFailureHandler")
    private AjaxAuthenticationFailureHandler ajaxAuthenticationFailureHandler;

	@Autowired
	private UserDetailsService userDetailsService;

	@Autowired
	protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("admin").password("123").roles("ADMIN");
		//System.out.println("configure global");
		auth.userDetailsService(userDetailsService)
		.passwordEncoder(passwordEncoder());
//		 auth.inMemoryAuthentication().withUser("user").password("123").roles("USER");
	}
	

	
	@Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/about").permitAll()
                .antMatchers("/contact").permitAll()
                .antMatchers("/home/**").permitAll()
                .antMatchers("/expert/filter/**").permitAll()
                .antMatchers("/admin/**").hasRole("ADMIN")
                .antMatchers("/expert/detail/**").hasAnyRole("ADMIN","USER")
        .and()
		.formLogin()
		.loginPage("/login")
		.usernameParameter("user")
		.passwordParameter("password")
		.permitAll().failureHandler(ajaxAuthenticationFailureHandler)
		.successHandler(ajaxAuthenticationSuccessHandler);
	/*http
		.sessionManagement()
		.sessionAuthenticationErrorUrl("/login")
		.maximumSessions(1)
		.maxSessionsPreventsLogin(true)
		.expiredUrl("/login")
		.sessionRegistry(sessionRegistryImpl());*/
	/*http
		.logout()
		.logoutUrl("/logout")
		.logoutSuccessUrl(environment.getProperty("ACCOUNT_LOGOUT_URL"))
		.invalidateHttpSession(true)
		.deleteCookies("JESSIONID",environment.getProperty("ACCOUNT_KNONG_DAI_COOKIE_NAME"))
		.permitAll();*/
	
	http.csrf().disable();
	http.exceptionHandling().accessDeniedPage("/access-denied");

    }

	@Bean
	protected SessionRegistry sessionRegistryImpl(){
		return new SessionRegistryImpl();
	}
    
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
     
     
 
}
