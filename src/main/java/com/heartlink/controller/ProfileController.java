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

import com.heartlink.model.Article;
import com.heartlink.model.Condition;
import com.heartlink.model.Member;
import com.heartlink.model.Question;
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
		log.info("지역:"+ profile.getRgarea());
		log.info("아이디:" +profile.getRgid());
		log.info("생일:"+profile.getRgbirth());
		log.info("#####################");
			
		
		return profile;
	}
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/condition", method=RequestMethod.GET)
	public Condition getProfileMessage(HttpSession session){

		log.info("#####################");
		log.info("###getProfileMessage####");
		log.info("#####################");
		
		
		
		
		User sessionuser = (User)session.getAttribute("user");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		String sql = "select * from profile where userid = ?";
		
		Condition message = new Condition();
		
		message = template.queryForObject(sql, new Object[] {sessionuser.getId()}, new BeanPropertyRowMapper<Condition>(Condition.class));
		

		log.info("#####################");
		log.info(message.getMessage());
		log.info("#####################");
			
		
		return message;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/condition", method=RequestMethod.POST)
	public Condition getCondition(@RequestBody Condition messageChange, HttpSession usersession){
		
		User user = (User)usersession.getAttribute("user");
		String nowUserId = user.getId();
		
		log.info("#####################");
		log.info("getProfile_1() .........");
		log.info("#####################");
		log.info(messageChange.getMessage());
		
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
			template.update(insertsql, messageChange.getMessage(), nowUserId);
			
			
		}else {
			//기존 update
			log.info("레코드가 존재합니다. 수정하겠습니다.");
			template.update(updatesql, messageChange.getMessage() ,nowUserId);
			
		}

		return messageChange;
	}
	
}
