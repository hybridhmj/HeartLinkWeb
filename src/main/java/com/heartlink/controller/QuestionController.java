package com.heartlink.controller;

import java.util.List;

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

import com.heartlink.model.Article;
import com.heartlink.model.Question;

@Controller
@RequestMapping("/q")
public class QuestionController {
	
	static Log log = LogFactory.getLog(QuestionController.class);
	
	@Autowired
	DataSource datasource;
	
	
	@RequestMapping(value="/question", method=RequestMethod.GET)
	@ResponseBody
	public List<Question> question() {
		
		log.info("########################################");
		log.info("QuestionController()...");
		log.info("########################################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		List<Question> questions = template.query("select * from a1_b1", new BeanPropertyRowMapper<Question>(Question.class));
		
		if(questions.isEmpty()){
			log.info("## list empty ##");
		}else{
			log.info("## list not empty ##");
		}
		
		
		
		return questions;
	}

}
