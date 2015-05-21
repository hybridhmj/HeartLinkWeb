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

import com.heartlink.model.Article;
import com.heartlink.model.Profile;
import com.heartlink.model.Member;
import com.heartlink.model.Note;
import com.heartlink.model.Status;
import com.heartlink.model.User;

@Controller
@RequestMapping("/note")
public class NoteController {
	
	@Autowired
	DataSource datasource;
	
	static Log log = LogFactory.getLog(NoteController.class);
	
	
	

	@RequestMapping(value="/accept", method=RequestMethod.POST)
	@ResponseBody
	public Status requestAccept(@RequestBody String requestid, HttpSession session) {
		User user = (User)session.getAttribute("user");
		Status result = new Status();
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		log.info("#################################");
		log.info("########requestAccept#########" + requestid);
		log.info("#################################");
		
		int num = template.queryForInt("select MAX(num) from note");
		num += 1;
		
		String sql1 = "delete from rqkakaoid where userid = ? and requestid = ? ";
		String sql2 = "insert into note (userid, message, num) values (?, ?, ?) ";
		String sql3 = "select kakaoid from member where rgid = ? ";
		Member member = new Member();
		member = template.queryForObject(sql3, new Object[] {requestid}, new BeanPropertyRowMapper<Member>(Member.class));
		
		try{
			
			member = template.queryForObject(sql3, new Object[] {requestid}, new BeanPropertyRowMapper<Member>(Member.class));
			
			template.update(sql2, user.getId(), member.getKakaoid() ,num);
			
			template.update(sql1, user.getId(), requestid);
			
			result.setStatus(true);
		}catch(DataAccessException e) {
			log.info("데이터 베이스 에러");
			result.setStatus(false);
		}
		

		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/message", method=RequestMethod.GET)
	@ResponseBody
	public List<Note> requestMessage(HttpSession session) {
		
		log.info("#################################");
		log.info("########requestMessage#########");
		log.info("#################################");
		

		User user = (User)session.getAttribute("user");
		JdbcTemplate template = new JdbcTemplate(datasource);
		List<Note> notes = new ArrayList<Note>(); 

		
		String sql = "select * from note where userid = ? ";
		
		
		try{
			notes = template.query(sql, new Object[] {user.getId()}, new BeanPropertyRowMapper<Note>(Note.class));
		}catch(Exception e) {
			log.info(e);
		}
		
		
		return notes;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/msgdelete", method=RequestMethod.POST)
	@ResponseBody
	public Status deleteMessage(@RequestBody String deletenum) {

		Status status = new Status();
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		log.info("#################################");
		log.info("########deleteMessage#########" + deletenum);
		log.info("#################################");

		String sql = "delete from note where num = ?";
		
		
		
		try{
			template.update(sql, deletenum);
			status.setStatus(true);
			return status;
		}catch(Exception e) {
			log.info("데이터 베이스 에러");
			status.setStatus(false);
			return status;
		}

	}
	
	
	
	
}

