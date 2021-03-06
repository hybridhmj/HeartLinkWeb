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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heartlink.model.Profile;
import com.heartlink.model.Requestid;
import com.heartlink.model.Status;
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/requestprofile", method=RequestMethod.POST)
	@ResponseBody
	public Profile requestProfile(@RequestBody String requestid) {

		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		log.info("#################################");
		log.info("########requestProfile#########" + requestid);
		log.info("#################################");
		Profile con = new Profile();
		String sql = "select * from profile where userid = ? ";
		
		
		
		try{
		con = template.queryForObject(sql, new Object[] {requestid}, new BeanPropertyRowMapper<Profile>(Profile.class));
		}catch(DataAccessException e) {
			log.info("데이터 베이스 에러");
		}

		
		
		return con;
	}
	

	
	
	
	@RequestMapping(value="/reject", method=RequestMethod.POST)
	@ResponseBody
	public Status requestReject(@RequestBody String requestid) {

		Status result = new Status();
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		log.info("#################################");
		log.info("########requestReject#########" + requestid);
		log.info("#################################");
		
		String sql = "delete from rqkakaoid where userid = ?";
		

		try{
			template.update(sql, requestid);
			result.setStatus(true);
		}catch(DataAccessException e) {
			log.info("데이터 베이스 에러");
			result.setStatus(false);
		}

		
		
		return result;
	}
	
	
}
