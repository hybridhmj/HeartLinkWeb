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
@RequestMapping(value="/register")
public class RegisterController {

	static Log log = LogFactory.getLog(RegisterController.class);
	
	
	@RequestMapping(value="/registerform", method=RequestMethod.GET)
	public String getLogin(){

		return "/register/registerform";
	}


	
	
}
