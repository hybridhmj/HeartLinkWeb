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

import com.heartlink.model.Member;
import com.heartlink.model.MemberStatus;
import com.heartlink.model.User;




@Controller
@RequestMapping(value="/login")
public class RegisterController {

	static Log log = LogFactory.getLog(RegisterController.class);
	
	
	@Autowired
	DataSource datasource;
	
	@ResponseBody
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public MemberStatus getLogin(@RequestBody Member member){

		log.info("#####################");
		log.info("######register##POST###########");
		log.info("######" + member.getRgid()+ member.getRgpassword()+ member.getRgbirth()+member.getRgsex()+ member.getRgarea()+ member.getKakaoid() + "#######");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		
		String sql = "insert into member " +
				 " (rgid, rgpassword, rgbirth, rgsex, rgarea, kakaoid) " +
				 "values " +
				 " (?, ?, ?, ?, ?, ?)";
		
		String sql2 = "insert into profile " + "(message, userid) " + "values " + "(?, ?)";
		
		
		MemberStatus result = new MemberStatus();
		
		result.setMember(member);
		
		
		try {

			template.update(sql, member.getRgid(), member.getRgpassword(), member.getRgbirth(),member.getRgsex(), member.getRgarea(), member.getKakaoid());

			result.setStatus(true);
			
			if((result.getStatus())==true){
				template.update(sql2, "Welcome", member.getRgid());
			}
	

		} catch (DataAccessException e) {
			result.setStatus(false);

		}

		
		return result;
	
	}

	
	
	
	
	
	
}
