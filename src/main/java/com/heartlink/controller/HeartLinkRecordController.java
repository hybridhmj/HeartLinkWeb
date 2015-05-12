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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heartlink.model.QuestionAnswer;
import com.heartlink.model.User;

@Controller
@RequestMapping(value="/heartlinkrecord")
public class HeartLinkRecordController {

	
	static Log log = LogFactory.getLog(ProfileController.class);
	
	
	@Autowired
	DataSource datasource;
	
	@ResponseBody
	@RequestMapping(value="/record", method=RequestMethod.GET)
	public List<QuestionAnswer> getRecord(HttpSession session){
		User sessionuser = (User)session.getAttribute("user");
		
		log.info("#####################");
		log.info("########getRecord######");
		log.info("#####################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		String sql = "select * from heartlinkrecord where recordid = ?";
		
		List<QuestionAnswer> answer = template.query(sql, new Object[] {sessionuser.getId()}, new BeanPropertyRowMapper<QuestionAnswer>(QuestionAnswer.class));

		
		return answer;
	}
	
	
}
