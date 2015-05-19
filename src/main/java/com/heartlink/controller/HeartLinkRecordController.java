package com.heartlink.controller;

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

import com.heartlink.model.HeartLinkRecord;
import com.heartlink.model.QuestionAnswer;
import com.heartlink.model.QuestionAnswerStatus;
import com.heartlink.model.User;

@Controller
@RequestMapping(value="/heartlinkrecord")
public class HeartLinkRecordController {
	@Autowired
	DataSource datasource;
	static Log log = LogFactory.getLog(HeartLinkRecordController.class);

	
	
	@ResponseBody
	@RequestMapping(value="/record", method=RequestMethod.GET)
	public List<HeartLinkRecord> getRecord(HttpSession session){
		User sessionuser = (User)session.getAttribute("user");
		
		log.info("#########################");
		log.info("########getRecord()######");
		log.info("#########################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		String sql = "select * from heartlinkrecord where recordid = ? order by num asc";
		
		List<HeartLinkRecord> answer = template.query(sql, new Object[] {sessionuser.getId()}, new BeanPropertyRowMapper<HeartLinkRecord>(HeartLinkRecord.class));

		
		return answer;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/match", method=RequestMethod.GET)
	public List<HeartLinkRecord> getMatch(HttpSession session){
		User sessionuser = (User)session.getAttribute("user");
		
		log.info("########################");
		log.info("########getMatch()######");
		log.info("########################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		String sql = "select * from matchingrecord where recordid = ?";
		
		List<HeartLinkRecord> answer = template.query(sql, new Object[] {sessionuser.getId()}, new BeanPropertyRowMapper<HeartLinkRecord>(HeartLinkRecord.class));

		
		return answer;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/changematch", method=RequestMethod.POST)
	public QuestionAnswerStatus changeMatch(@RequestBody Integer num, HttpSession session){
		User sessionuser = (User)session.getAttribute("user");
		
		log.info("#########################");
		log.info("########changeMatch()######");
		log.info("#########################");

		
		QuestionAnswerStatus result = new QuestionAnswerStatus();
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		String sql = "select * from heartlinkrecord where num = ? ";
		
		HeartLinkRecord changeanswer = template.queryForObject(sql, new Object[] {num}, new BeanPropertyRowMapper<HeartLinkRecord>(HeartLinkRecord.class));
		
		String sql2 = "select * from matchingrecord where recordid = ? ";
		
		HeartLinkRecord matchanswer = template.queryForObject(sql2, new Object[] {sessionuser.getId()}, new BeanPropertyRowMapper<HeartLinkRecord>(HeartLinkRecord.class));
		
		
		//////기존에 있는것들 모두 삭제
		String sql3 = "delete from heartlinkrecord where num = ?";
		String sql4 = "delete from matchingrecord where recordid = ?";
		
		template.update(sql3, num);
		template.update(sql4, sessionuser.getId());
		
		
		//////match에 있는것을 다시 Hearrecor로 넣는다.
		
		
		String sql5 = "insert into heartlinkrecord " +
				 " (answer1, answer2, answer3, answer4, answer5, answer6, answer7, answer8, answer9, answer10, answer11, answer12, answer13, answer14, answer15, answer16, answer17, answer18, answer19, answer20, answer21, answer22, answer23, answer24, recordid, num, questionnum) " +
				 " values " +
				 " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			
		template.update(sql5, matchanswer.getAnswer1(),
				matchanswer.getAnswer2(),
				matchanswer.getAnswer3(),
				matchanswer.getAnswer4(),
				matchanswer.getAnswer5(),
				matchanswer.getAnswer6(),
				matchanswer.getAnswer7(),
				matchanswer.getAnswer8(),
				matchanswer.getAnswer9(),
				matchanswer.getAnswer10(),
				matchanswer.getAnswer11(),
				matchanswer.getAnswer12(),
				matchanswer.getAnswer13(),
				matchanswer.getAnswer14(),
				matchanswer.getAnswer15(),
				matchanswer.getAnswer16(),
				matchanswer.getAnswer17(),
				matchanswer.getAnswer18(),
				matchanswer.getAnswer19(),
				matchanswer.getAnswer20(),
				matchanswer.getAnswer21(),
				matchanswer.getAnswer22(),
				matchanswer.getAnswer23(),
				matchanswer.getAnswer24(),
				sessionuser.getId(),
				num,
				matchanswer.getQuestionnum());
		
		result.setStatus(true);
		
		} catch (DataAccessException e) {
			result.setStatus(false);

		}
		
		String sql6 = "insert into matchingrecord " +
				 " (answer1, answer2, answer3, answer4, answer5, answer6, answer7, answer8, answer9, answer10, answer11, answer12, answer13, answer14, answer15, answer16, answer17, answer18, answer19, answer20, answer21, answer22, answer23, answer24, recordid, questionnum) " +
				 " values " +
				 " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
		
		template.update(sql6, changeanswer.getAnswer1(),
				changeanswer.getAnswer2(),
				changeanswer.getAnswer3(),
				changeanswer.getAnswer4(),
				changeanswer.getAnswer5(),
				changeanswer.getAnswer6(),
				changeanswer.getAnswer7(),
				changeanswer.getAnswer8(),
				changeanswer.getAnswer9(),
				changeanswer.getAnswer10(),
				changeanswer.getAnswer11(),
				changeanswer.getAnswer12(),
				changeanswer.getAnswer13(),
				changeanswer.getAnswer14(),
				changeanswer.getAnswer15(),
				changeanswer.getAnswer16(),
				changeanswer.getAnswer17(),
				changeanswer.getAnswer18(),
				changeanswer.getAnswer19(),
				changeanswer.getAnswer20(),
				changeanswer.getAnswer21(),
				changeanswer.getAnswer22(),
				changeanswer.getAnswer23(),
				changeanswer.getAnswer24(),
				sessionuser.getId(),
				changeanswer.getQuestionnum());
		result.setStatus(true);
		
		} catch (DataAccessException e) {
			result.setStatus(false);

		}

		return result;
	}
	
	
}
