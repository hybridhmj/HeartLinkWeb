package com.heartlink.controller;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heartlink.model.Condition;
import com.heartlink.model.Member;
import com.heartlink.model.User;




@Controller
@RequestMapping(value="/pro")
public class ProfileController {

	static Log log = LogFactory.getLog(ProfileController.class);
	
	User user;
	
	
	@Autowired
	DataSource datasource;
	
	@ResponseBody
	@RequestMapping(value="/profile", method=RequestMethod.GET)
	public Member getProfile(HttpSession session){
		User sessionuser = (User)session.getAttribute("user");
		
		log.info("#####################");
		log.info("########getProfile######");
		log.info("#####################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		String sql = "select * from member where rgid = ?";
		
		Member profile = template.queryForObject(sql, new Object[] {sessionuser.getId()}, new BeanPropertyRowMapper<Member>(Member.class));
		
		log.info("#####################");
		log.info("#######"+ profile.getRgarea() +"######");
		log.info("#####################");
			
		
		return profile;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/condition", method=RequestMethod.GET)
	public Condition getProfileMessage(){
		
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		String sql = "select * from condition where num = 2";
		
		Condition message = new Condition();
		
		message = template.queryForObject(sql, new BeanPropertyRowMapper<Condition>(Condition.class));
		
		log.info("#####################");
		log.info("#######"+ message.getMessage() +"######");
		log.info("#####################");
			
		
		return message;
	}

	
	
	
	
	
	
}
