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


@Controller
@RequestMapping(value="/login")
public class LoginController {

	static Log log = LogFactory.getLog(LoginController.class);
	
	
	@RequestMapping(value="/form", method=RequestMethod.GET)
	public String getLogin(){

		return "/login/form";
	}
	
	
	
	@Autowired
	DataSource datasource;

	
//	@RequestMapping(value="/form", method=RequestMethod.POST)
//	public String loginResult(Login loginformation, HttpSession session){
//		log.info("#############################");
//		log.info(loginformation.getId());
//		log.info(loginformation.getPassword());
//		log.info(loginformation.getName());
//		log.info("#############################");
//
//		
//		JdbcTemplate template = new JdbcTemplate(datasource);
//		
//		String sql = "select * from login where id= ?";
//
//		
//		Login userinfo = template.queryForObject(sql, new Object[] {loginformation.getId()}, new BeanPropertyRowMapper<Login>(Login.class) );
//		
//		if(loginformation.getPassword().equals(userinfo.getPassword())){
//			session.setAttribute("userinfo", userinfo);
//			return "/login/form";
//		}else {
//			return "redirect:form";
//		}
//		
//		
//	}
	
	@RequestMapping(value="/form", method=RequestMethod.POST)
	@ResponseBody
	public LoginResult form(Login loginformation, HttpSession session){

		JdbcTemplate template = new JdbcTemplate(datasource);
		
		String sql = "select * from login where id= ?";
		
		Login userinfo = template.queryForObject(sql, new Object[] {loginformation.getId()}, new BeanPropertyRowMapper<Login>(Login.class) );
		
		LoginResult result = new LoginResult();
		result.setLogin(userinfo);
		
		if(loginformation.getPassword().equals(userinfo.getPassword())){
			session.setAttribute("userinfo", userinfo);
			result.setLogincheck("true");;
			result.setStatus(true);
			result.setStatusText("OK");
		}else {
			result.setStatus(false);
			result.setStatusText("Fail");
		}
		

		
		return result;
		
		
	}
	
	
	
	
	
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:form";
	}
	

	
	
}
