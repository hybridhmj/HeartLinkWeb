package com.heartlink.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heartlink.model.Requestid;
import com.heartlink.model.Show;
import com.heartlink.model.User;



@Controller
@RequestMapping("/situation")
public class MySituationController {
	
	static Log log = LogFactory.getLog(MySituationController.class);
	
	
	@Autowired
	DataSource datasource;
	
	@RequestMapping(value="/request", method=RequestMethod.GET)
	@ResponseBody
	public List<Requestid> requestSituation(HttpSession session) {
		User user = (User)session.getAttribute("user");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		log.info("#################################");
		log.info("########requestSituation#########");
		log.info("#################################");
		
		log.info(user.getId());

		String sql = "select requestid from rqkakaoid where userid = ? ";
		
		List<Requestid> requests = new ArrayList<Requestid>();
		try{
			requests = template.query(sql, new Object[] {user.getId()} , new BeanPropertyRowMapper<Requestid>(Requestid.class));
		}catch(DataAccessException e) {
			log.info("requestSituation 에러");
		}
		
		
		for(Requestid id : requests){
			log.info(id.getRequestid());
		}
		
		
		return requests;
	}
}
