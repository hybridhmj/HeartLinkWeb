package com.heartlink.controller;

import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heartlink.model.Condition;
import com.heartlink.model.User;




@Controller
@RequestMapping(value="/pro1")
public class Profile_1Controller {

	static Log log = LogFactory.getLog(Profile_1Controller.class);
	
	User user;
	
	
	@Autowired
	DataSource datasource;
	
	@ResponseBody
	@RequestMapping(value="/profile_1", method=RequestMethod.POST)
	public Condition getProfile_1(@RequestBody Condition profile_1){
		
		log.info("#####################");
		log.info("getProfile_1() .........");
		log.info("#####################");
		log.info(profile_1.getMessage());
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		String sql = "update profile set message = ? where num=2";
		
		template.update(sql, profile_1.getMessage());
		
		
		log.info("#####################");
		log.info("templateerror() .........");
		log.info("#####################");
				
		return profile_1;
	}
	
}
