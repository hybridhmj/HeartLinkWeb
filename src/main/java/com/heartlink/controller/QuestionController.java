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

@Controller
@RequestMapping("/q")
public class QuestionController {
	
	static Log log = LogFactory.getLog(QnAController.class);
	
	@Autowired
	DataSource datasource;
	
	@RequestMapping(value="/question", method=RequestMethod.GET)
	@ResponseBody
	public List<Article> question() {
		
		log.info("########################################");
		log.info("List<Article> question()...");
		log.info("########################################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		List<Article> list = template.query("select * from article order by 1 desc", new BeanPropertyRowMapper<Article>(Article.class));
	
		if(list.isEmpty()){
			log.info("## list empty ##");
		}else{
			log.info("## list not empty ##");
		}
		
		for(Article l : list) {
			log.info(l.getTitle());
		}

		return list;
	}

}
