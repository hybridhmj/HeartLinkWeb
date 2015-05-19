package com.heartlink.controller;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heartlink.dao.MemberDao;
import com.heartlink.model.LoginStatus;
import com.heartlink.model.Member;
import com.heartlink.model.User;

@Controller
@RequestMapping("/login")
public class LoginController {

	static Log log = LogFactory.getLog(LoginController.class);
	
	@Autowired
	MemberDao memberdao;
	
	@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public LoginStatus login(@RequestBody User user, HttpSession session) {
		log.info("#########################");
		log.info("login() POST...");
		log.info("id=" + user.getId());
		log.info("password=" + user.getPassword());
		log.info("#########################");

		
		Member userinfo = new Member();
		LoginStatus result = new LoginStatus();
		
		
		
		try{
		userinfo = memberdao.SelectMemberById(user.getId());
		
		if (userinfo.getRgpassword().equals(user.getPassword())) {
			session.setAttribute("user", user);
			result.setStatus(true);
			
		} else {
			// Login Fail
			result.setStatus(false);
			
			log.info("#########################");
			log.info("로그인 실패");
			log.info("#########################");
			
			
		}
		
		}catch(DataAccessException e){
			
			result.setStatus(false);
			
		}

		result.setUser(user);
		
		return result;
		
	}
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/logincheck", method=RequestMethod.GET)
	public LoginStatus logcheck(HttpSession session) {
		log.info("#########################");
		log.info("logincheck() GET...");
		log.info("#########################");
		
		User user = (User)session.getAttribute("user");
		
		LoginStatus status = new LoginStatus();
		if (user == null)
			status.setStatus(false);
		else
			status.setStatus(true);
		
		status.setUser(user);
		
		return status;
	}
	
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public LoginStatus logout(HttpSession session) {
		log.info("#########################");
		log.info("logout() GET...");
		log.info("#########################");
		
		session.invalidate();
		
		LoginStatus status = new LoginStatus();
		status.setStatus(false);
		
		return status;
	}
	
	
	
	
	
	
}
