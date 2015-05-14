package com.heartlink.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
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
	public Condition getProfile_1(@RequestBody Condition profile_1, HttpSession usersession){
		
		User user = (User)usersession.getAttribute("user");
		String nowUserId = user.getId();
		
		log.info("#####################");
		log.info("getProfile_1() .........");
		log.info("#####################");
		log.info(profile_1.getMessage());
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		String countsql = "select count(*) from profile where userid = ?";
		
		int count = template.queryForInt(countsql, nowUserId);
		
		
		log.info("#####################");
		log.info(count);
		log.info("#####################");
		
		String insertsql = "insert into profile (message, userid) values (?, ?)";
		String updatesql = "update profile set message = ? where userid = ?";

		if(count != 1){
			//처음 insert
			log.info("레코드가 존재하지 않습니다. 생성하겠습니다.");
			template.update(insertsql, profile_1.getMessage(), nowUserId);
			
			
		}else {
			//기존 update
			log.info("레코드가 존재합니다. 수정하겠습니다.");
			template.update(updatesql, profile_1.getMessage() ,nowUserId);
			
		}

		return profile_1;
	}
	
}
