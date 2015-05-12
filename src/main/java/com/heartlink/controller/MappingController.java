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
@RequestMapping("/match")
public class MappingController {
	
	static Log log = LogFactory.getLog(MappingController.class);
	
	@Autowired
	DataSource datasource;
	
	
	@RequestMapping(value="/mapping", method=RequestMethod.GET)
	@ResponseBody
	public List<Question> mapping(HttpSession session) {
		
		User user = (User)session.getAttribute("user");
		
		log.info("########################################");
		log.info("QuestionController()...");
		log.info("########################################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		//가장 최신의 num 값을 받는다
		String sql1 = "select MAX(num) from heartlinkrecord where = ?";
		int num = template.queryForInt(sql1, user.getId());
		//record 테이블에 게임이 있는지 확인
		String sql2 = "select count(*) from heartlinkrecord where = ?";
		int num2 = template.queryForInt(sql2, user.getId());
		
		
		if(num2==0){
			//대표를 가져와서 맵핑
		}else {
			//num의 변수를 가져와 그 변수랑 일치하는 것들로 맵핑
		}
		
		
		return null;
	}

	
	

}
