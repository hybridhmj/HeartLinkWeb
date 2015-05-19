package com.heartlink.controller;

import java.util.HashMap;

import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heartlink.dao.MemberDao;
import com.heartlink.dao.ProfileDao;
import com.heartlink.model.Member;
import com.heartlink.model.MemberStatus;


@Controller
@RequestMapping(value="/login")
public class RegisterController {

	static Log log = LogFactory.getLog(RegisterController.class);
	
	@Autowired
	MemberDao memberdao;
	
	@Autowired
	ProfileDao profiledao;
	
	@Autowired
	DataSource datasource;
	
	@ResponseBody
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public MemberStatus getLogin(@RequestBody Member member){

		log.info("#####################");
		log.info("######register##POST###########");
		log.info("######" + member.getRgid()+ member.getRgpassword()+ member.getRgbirth()+member.getRgsex()+ member.getRgarea()+ member.getKakaoid() + "#######");
		
	
		MemberStatus result = new MemberStatus();
		
		result.setMember(member);
		String welcome = "welcome";
		
		HashMap<String, Object> hashmap = new HashMap<String, Object>(); 
		hashmap.put("member", member);
		hashmap.put("welcome", welcome);
		
		
		try {
			int insertValue = memberdao.InsertMemberRegister(member);
			log.info("Register insert return value : "+insertValue);
			if(insertValue == 1){
				result.setStatus(true);
			}else {
				result.setStatus(false);
				return result;
			}
			
			
			int insertValue2 = profiledao.InsertFirstProfileCondtion(hashmap);
			log.info("Profile insert return value : "+insertValue2);
			
			if(insertValue2 == 1){
				result.setStatus(true);
			}else {
				result.setStatus(false);
				return result;
			}
	

		} catch (DataAccessException e) {
			result.setStatus(false);
			return result;
		}

		
		return result;
	
	}

	
	
	
	
	
	
}
