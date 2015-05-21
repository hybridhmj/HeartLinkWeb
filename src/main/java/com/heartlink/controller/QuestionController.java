package com.heartlink.controller;

import java.util.ArrayList;
import java.util.HashMap;
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

import com.heartlink.dao.HeartLinkRecordDao;
import com.heartlink.dao.MatchingRecordDao;
import com.heartlink.dao.ProfileDao;
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
	
	@Autowired
	HeartLinkRecordDao heartLinkRecordDao;
	
	@Autowired
	MatchingRecordDao matchingRecordDao;
	
	@Autowired
	ProfileDao profileDao;
	
	
	
	
	
	
	
	@RequestMapping(value="/question", method=RequestMethod.POST)
	@ResponseBody
	public List<Question> question(@RequestBody String type) {
		
		log.info("########################################");
		log.info("question()..." +type);
		log.info("########################################");

		
		List<Question> questions = questiondao.SelectQuestionByName(type);

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
		int HLRMaxnum = 0;
		QuestionAnswerStatus result = new QuestionAnswerStatus();

		
		int count = matchingRecordDao.selectMaxNumber(user.getId());
		log.info("##########count#####"+count);
		
		int HLRNum = heartLinkRecordDao.selectCheckNumber(user.getId());
		log.info("########HLRNum#######"+HLRNum);
		
		
		if(HLRNum == 0){
			HLRMaxnum = 1;
			log.info("########HLRMaxnum#######"+HLRNum);
		}else{
			HLRMaxnum = heartLinkRecordDao.selectMaxNumber(user.getId());
			HLRMaxnum += 1;
			log.info("########HLRMaxnum#######"+HLRNum);
		}


		HashMap<String, Object> heartlinkHashmap = new HashMap<String, Object>(); 
		heartlinkHashmap.put("questionAnswer", QuestionAnswer);
		heartlinkHashmap.put("num", HLRMaxnum);
		heartlinkHashmap.put("userid", user.getId());
		
		HashMap<String, Object> matchingHashmap = new HashMap<String, Object>(); 
		matchingHashmap.put("questionAnswer", QuestionAnswer);
		matchingHashmap.put("userid", user.getId());
		

		if(0<count){
			
			try {	
				heartLinkRecordDao.insertHeartLinkRecord(heartlinkHashmap);
				result.setStatus(true);
			} catch (DataAccessException e) {
				result.setStatus(false);
			}
			return result;
			
		}else {
			
			try {
				matchingRecordDao.insertMatchingRecord(matchingHashmap);
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
		
		log.info("################################");
		log.info("################mapping#########");
		log.info("################################");
		int rate = QuestionAnswer.getRate();
		
		List<String> name = new ArrayList<String>();
		
		List<QuestionAnswer> matching = matchingRecordDao.selectMatchingRecordAllByQuestionNum(QuestionAnswer.getQuestionnum());
		
		
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
		
		Condition profile = new Condition();
		
		List <Condition> whomatch = new ArrayList<Condition>();
		for(String match : name){
			profile = profileDao.selectProfileByName(match);
			whomatch.add(profile);
		}
		

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
		JdbcTemplate template = new JdbcTemplate(datasource);
		int num = template.queryForInt("select MAX(num) from rqkakaoid");
		num += 1;
		String sql = "insert into rqkakaoid (userid, requestid, num) values (?, ?, ?)";
		try{
		template.update(sql, username, user.getId(), num);
		result.setStatus(true);
		
		}catch(DataAccessException e){
			result.setStatus(false);
		}
		

		
		return result;
	}
	
	
	
	
	
	
	
	

}
