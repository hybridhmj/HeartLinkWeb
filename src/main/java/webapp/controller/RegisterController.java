package webapp.controller;

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

import webapp.model.Login;
import webapp.model.LoginResult;
import webapp.model.Member;
import webapp.model.MemberResult;


@Controller
@RequestMapping(value="/member")
public class RegisterController {

	static Log log = LogFactory.getLog(RegisterController.class);
	
	
	@Autowired
	DataSource dataSource;
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public MemberResult getLogin(Member member){
		
		log.info("#####################");
		log.info("######register##POST###########");
		log.info("#####################");

		JdbcTemplate template = new JdbcTemplate(dataSource);
		
		
		String sql = "insert into member " +
				 " (id, password, age, nickname, area, sex, kakaoid) " +
				 "values " +
				 " (?, ?, ?, ?, ?, ?, ?)";
		
		
		MemberResult result = new MemberResult();
		result.setMember(member);
		
		
		try {
			template.update(sql, member.getId(),member.getPassword(),member.getAge(),member.getNickname(),member.getAge(),member.getSex(),member.getKakaoid());
			result.setStatus(true);
			result.setStatusText("OK");
		} catch (DataAccessException e) {
			result.setStatus(false);
			result.setStatusText(e.getMessage());
		}

		
		return result;
	
	}

	
	
	
	
	
	
}
