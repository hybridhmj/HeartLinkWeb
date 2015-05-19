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

import com.heartlink.dao.QuestionDao;
import com.heartlink.model.Condition;
import com.heartlink.model.MappingAnswer;
import com.heartlink.model.Question;
import com.heartlink.model.QuestionAnswer;
import com.heartlink.model.QuestionAnswerStatus;
import com.heartlink.model.RequestkakaorStatus;
import com.heartlink.model.User;

@Controller
@RequestMapping("/q")
public class QuestionController {
	
	static Log log = LogFactory.getLog(QuestionController.class);
	
	@Autowired
	DataSource datasource;
	
	@Autowired
	QuestionDao questiondao;
	
	
	@RequestMapping(value="/question", method=RequestMethod.POST)
	@ResponseBody
	public List<Question> question(@RequestBody String questionNum) {
		
		log.info("########################################");
		log.info("question()..." +questionNum);
		log.info("########################################");

		
		List<Question> questions = questiondao.SelectQuestionByName(questionNum);

		if(questions.isEmpty()){
			log.info("## list empty ##");
		}else{
			log.info("## list not empty ##");
		}
		
		return questions;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public QuestionAnswerStatus save(@RequestBody QuestionAnswer QuestionAnswer, HttpSession session){
		
		User user = (User)session.getAttribute("user");
		log.info("#####################");
		log.info("######save##POST###########");
		log.info("#####################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		QuestionAnswerStatus result = new QuestionAnswerStatus();
		String countsql = "select count(*) from matchingrecord where recordid = ?";
		
	
		log.info("#####################");
		log.info(template.queryForInt(countsql, user.getId()));
		log.info("#####################");
		
		int count = template.queryForInt(countsql, user.getId());
		log.info("여기1");
		if(0<count){
			
			int num = template.queryForInt("select MAX(num) from heartlinkrecord");
			num += 1;
			log.info("id =" + num);

			
			String sql = "insert into heartlinkrecord " +
					 " (answer1, answer2, answer3, answer4, answer5, answer6, answer7, answer8, answer9, answer10, answer11, answer12, answer13, answer14, answer15, answer16, answer17, answer18, answer19, answer20, answer21, answer22, answer23, answer24, recordid, num, questionnum ) " +
					 " values " +
					 " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";

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
									num,
									QuestionAnswer.getQuestionnum());

				result.setStatus(true);
		

			} catch (DataAccessException e) {
				result.setStatus(false);

			}
			
			return result;
		}else{
			log.info("여기2");
			String sql = "insert into matchingrecord " +
					 " (answer1, answer2, answer3, answer4, answer5, answer6, answer7, answer8, answer9, answer10, answer11, answer12, answer13, answer14, answer15, answer16, answer17, answer18, answer19, answer20, answer21, answer22, answer23, answer24, recordid, questionnum) " +
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
									QuestionAnswer.getQuestionnum());

				result.setStatus(true);
		

			} catch (DataAccessException e) {
				result.setStatus(false);

			}
			
			return result;
		}
		
		
		
		
		
		
		
		
		
	}
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/mapping", method=RequestMethod.POST)
	public List<Condition> mapping(@RequestBody MappingAnswer QuestionAnswer, HttpSession session){
		
		log.info("################################################");
		log.info("################mapping####################"+QuestionAnswer.getSex());
		log.info("################################################"+QuestionAnswer.getQuestionnum());
		int rate = QuestionAnswer.getRate();
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		List<String> name = new ArrayList<String>();
		
		String sql = "select * from matchingrecord where QUESTIONNUM = ? ";
		
		List<QuestionAnswer> matching = template.query(sql, new Object[] {QuestionAnswer.getQuestionnum()} , new BeanPropertyRowMapper<QuestionAnswer>(QuestionAnswer.class));
		
		int num=0;
		for(QuestionAnswer i :  matching){
			num=0;
			if(i.getAnswer1().equals(QuestionAnswer.getAnswer1())){
				num++;
			}if(i.getAnswer2().equals(QuestionAnswer.getAnswer2())){
				num++;
			}if(i.getAnswer3().equals(QuestionAnswer.getAnswer3())){
				num++;
			}if(i.getAnswer4().equals(QuestionAnswer.getAnswer4())){
				num++;
			}if(i.getAnswer5().equals(QuestionAnswer.getAnswer5())){
				num++;
			}if(i.getAnswer6().equals(QuestionAnswer.getAnswer6())){
				num++;
			}if(i.getAnswer7().equals(QuestionAnswer.getAnswer7())){
				num++;
			}if(i.getAnswer8().equals(QuestionAnswer.getAnswer8())){
				num++;
			}if(i.getAnswer9().equals(QuestionAnswer.getAnswer9())){
				num++;
			}if(i.getAnswer10().equals(QuestionAnswer.getAnswer10())){
				num++;
			}if(i.getAnswer11().equals(QuestionAnswer.getAnswer11())){
				num++;
			}if(i.getAnswer12().equals(QuestionAnswer.getAnswer12())){
				num++;
			}if(i.getAnswer13().equals(QuestionAnswer.getAnswer13())){
				num++;
			}if(i.getAnswer14().equals(QuestionAnswer.getAnswer14())){
				num++;
			}if(i.getAnswer15().equals(QuestionAnswer.getAnswer15())){
				num++;
			}if(i.getAnswer16().equals(QuestionAnswer.getAnswer16())){
				num++;
			}if(i.getAnswer17().equals(QuestionAnswer.getAnswer17())){
				num++;
			}if(i.getAnswer18().equals(QuestionAnswer.getAnswer18())){
				num++;
			}if(i.getAnswer19().equals(QuestionAnswer.getAnswer19())){
				num++;
			}if(i.getAnswer20().equals(QuestionAnswer.getAnswer20())){
				num++;
			}if(i.getAnswer21().equals(QuestionAnswer.getAnswer21())){
				num++;
			}if(i.getAnswer22().equals(QuestionAnswer.getAnswer22())){
				num++;
			}if(i.getAnswer23().equals(QuestionAnswer.getAnswer23())){
				num++;
			}if(i.getAnswer24().equals(QuestionAnswer.getAnswer24())){
				num++;
			};
			
			log.info(i.getRecordid() + ":" +num);
			
			if((num*4.16)>rate){
				name.add(i.getRecordid());
			};
			
		};
		
		String matchsql = "select * from profile where userid = ?";
		Condition con = new Condition();
		List <Condition> whomatch = new ArrayList<Condition>();
		log.info("###########1###########");
		for(String match : name){
			log.info("###########3###########");
//			log.info(match);
			con = template.queryForObject(matchsql, new Object[] {match}, new BeanPropertyRowMapper<Condition>(Condition.class));
			log.info("###########4###########");
//			log.info(con.getMessage());
			whomatch.add(con);
			log.info("###########5###########");
		}
		log.info("###########2###########");
		

		return whomatch;
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/requestkakao", method=RequestMethod.POST)
	@ResponseBody
	public RequestkakaorStatus requestKakao(@RequestBody String username, HttpSession session) {
		User user = (User)session.getAttribute("user");
		log.info("########################################");
		log.info("requestKakao()..." +username);
		log.info("########################################");
		
		RequestkakaorStatus result = new RequestkakaorStatus();
		log.info("#################1####################");
		JdbcTemplate template = new JdbcTemplate(datasource);
		log.info("##################2####################");
		int num = template.queryForInt("select MAX(num) from rqkakaoid");
		num += 1;
		log.info("#################3#####################");
		String sql = "insert into rqkakaoid (userid, requestid, num) values (?, ?, ?)";
		log.info("#################4####################");
		try{
		template.update(sql, username, user.getId(), num);
		log.info("################5#####################");
		result.setStatus(true);
		
		}catch(DataAccessException e){
			result.setStatus(false);
		}
		

		
		return result;
	}
	
	
	
	
	
	
	
	

}
