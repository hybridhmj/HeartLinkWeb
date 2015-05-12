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

import com.heartlink.model.Article;
import com.heartlink.model.Member;
import com.heartlink.model.MemberStatus;
import com.heartlink.model.Question;
import com.heartlink.model.QuestionAnswer;
import com.heartlink.model.QuestionAnswerStatus;
import com.heartlink.model.User;

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
	
	
	
	@ResponseBody
	@RequestMapping(value="/answer", method=RequestMethod.POST)
	public QuestionAnswerStatus answer(@RequestBody QuestionAnswer QuestionAnswer, HttpSession session){
		
		User user = (User)session.getAttribute("user");
		log.info("#####################");
		log.info("######answer##POST###########");
		log.info(QuestionAnswer.getAnswer1() + " " + QuestionAnswer.getAnswer13() + " " + QuestionAnswer.getAnswer20() + " " + QuestionAnswer.getAnswer15() + " " + QuestionAnswer.getAnswer10() );
		log.info(user.getId());
		JdbcTemplate template = new JdbcTemplate(datasource);
		QuestionAnswerStatus result = new QuestionAnswerStatus();
		String countsql = "select count(*) from matchingrecord where recordid = ?";
		
	
		log.info("#####################");
		log.info(template.queryForInt(countsql, user.getId()));
		log.info("#####################");
		
		int count = template.queryForInt(countsql, user.getId());
		
		if(0<count){
			int num = template.queryForInt("select MAX(num) from heartlinkrecord");
			num += 1;
			log.info("id =" + num);

			
			String sql = "insert into heartlinkrecord " +
					 " (answer1, answer2, answer3, answer4, answer5, answer6, answer7, answer8, answer9, answer10, answer11, answer12, answer13, answer14, answer15, answer16, answer17, answer18, answer19, answer20, answer21, answer22, answer23, answer24, recordid, num) " +
					 " values " +
					 " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			try {

				template.update(sql, QuestionAnswer.getAnswer1(),
									QuestionAnswer.getAnswer2(),
									QuestionAnswer.getAnswer3(),
									QuestionAnswer.getAnswer4(),
									QuestionAnswer.getAnswer5(),
									QuestionAnswer.getAnswer6(),
									QuestionAnswer.getAnswer7(),
									QuestionAnswer.getAnswer8(),
									QuestionAnswer.getAnswer9(),
									QuestionAnswer.getAnswer10(),
									QuestionAnswer.getAnswer11(),
									QuestionAnswer.getAnswer12(),
									QuestionAnswer.getAnswer13(),
									QuestionAnswer.getAnswer14(),
									QuestionAnswer.getAnswer15(),
									QuestionAnswer.getAnswer16(),
									QuestionAnswer.getAnswer17(),
									QuestionAnswer.getAnswer18(),
									QuestionAnswer.getAnswer19(),
									QuestionAnswer.getAnswer20(),
									QuestionAnswer.getAnswer21(),
									QuestionAnswer.getAnswer22(),
									QuestionAnswer.getAnswer23(),
									QuestionAnswer.getAnswer24(),
									user.getId(),
									num);

				result.setStatus(true);
		

			} catch (DataAccessException e) {
				result.setStatus(false);

			}
			
			return result;
		}else{
			String sql = "insert into matchingrecord " +
					 " (answer1, answer2, answer3, answer4, answer5, answer6, answer7, answer8, answer9, answer10, answer11, answer12, answer13, answer14, answer15, answer16, answer17, answer18, answer19, answer20, answer21, answer22, answer23, answer24, recordid) " +
					 " values " +
					 " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			try {

				template.update(sql, QuestionAnswer.getAnswer1(),
									QuestionAnswer.getAnswer2(),
									QuestionAnswer.getAnswer3(),
									QuestionAnswer.getAnswer4(),
									QuestionAnswer.getAnswer5(),
									QuestionAnswer.getAnswer6(),
									QuestionAnswer.getAnswer7(),
									QuestionAnswer.getAnswer8(),
									QuestionAnswer.getAnswer9(),
									QuestionAnswer.getAnswer10(),
									QuestionAnswer.getAnswer11(),
									QuestionAnswer.getAnswer12(),
									QuestionAnswer.getAnswer13(),
									QuestionAnswer.getAnswer14(),
									QuestionAnswer.getAnswer15(),
									QuestionAnswer.getAnswer16(),
									QuestionAnswer.getAnswer17(),
									QuestionAnswer.getAnswer18(),
									QuestionAnswer.getAnswer19(),
									QuestionAnswer.getAnswer20(),
									QuestionAnswer.getAnswer21(),
									QuestionAnswer.getAnswer22(),
									QuestionAnswer.getAnswer23(),
									QuestionAnswer.getAnswer24(),
									user.getId());

				result.setStatus(true);
		

			} catch (DataAccessException e) {
				result.setStatus(false);

			}
			
			return result;
		}
		
		
		
		
		
		
		
		
		
	}
	
	
	
	
	

}
