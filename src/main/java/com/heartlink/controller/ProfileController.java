package com.heartlink.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.heartlink.dao.ProfileDao;
import com.heartlink.model.Profile;
import com.heartlink.model.Member;
import com.heartlink.model.ProfileStatus;
import com.heartlink.model.User;




@Controller
@RequestMapping(value="/pro")
public class ProfileController {

	static Log log = LogFactory.getLog(ProfileController.class);
	

	@Autowired
	DataSource datasource;
	@Autowired
	ProfileDao profiledao;

	
	@ResponseBody
	@RequestMapping(value="/profile", method=RequestMethod.GET)
	public Member getMemberInfo(HttpSession session){
		User sessionuser = (User)session.getAttribute("user");
		
		log.info("#####################");
		log.info("########getProfile######");
		log.info("#####################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		String sql = "select * from member where rgid = ?";
		
		Member profile = template.queryForObject(sql, new Object[] {sessionuser.getId()}, new BeanPropertyRowMapper<Member>(Member.class));
		
		log.info("#####################");
		log.info("지역:"+ profile.getRgarea());
		log.info("아이디:" +profile.getRgid());
		log.info("생일:"+profile.getRgbirth());
		log.info("#####################");
			
		
		return profile;
	}
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/condition", method=RequestMethod.GET)
	public Profile getProfileMessage(HttpSession session){
		User user = (User)session.getAttribute("user");
		log.info("#######################");
		log.info("###getProfileMessage####");
		log.info("#######################");
		
		Profile message = profiledao.selectProfileByName(user.getId());

		log.info("#####################");
		log.info(message.getMessage());
		log.info("#####################");
			
		
		return message;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/condition", method=RequestMethod.POST)
	public ProfileStatus getCondition(@RequestBody String messageChange, HttpSession usersession){
		User user = (User)usersession.getAttribute("user");
		
		log.info("#####################");
		log.info("getCondition() .........");
		log.info("#####################");
		log.info(messageChange);
		ProfileStatus status = new ProfileStatus();
		Profile changemessage = new Profile();
		changemessage.setMessage(messageChange);
		changemessage.setUserid(user.getId());
		
		try{
			int num = profiledao.updateProfileCondition(changemessage);
			if(num == 1){
				log.info("수정 성공");
				status.setStatus(true);
			}else {
				log.info("디비접근은 성공했으나 수정 실패");
				status.setStatus(false);
			}
		}catch(DataAccessException e) {
			log.info("상태메시지 수정 실패");
			status.setStatus(false);
		}

		return status;
	}
	
	

	
	
	@RequestMapping(value="/upload/picture", method=RequestMethod.POST)
	public String savePicture(@RequestParam("f") MultipartFile multipartFile, Model model, HttpSession usersession) throws IOException{
		User user = (User)usersession.getAttribute("user");
		log.info("#############################");
		log.info("########savePicture#########");
		log.info("#############################");
		
		if(!multipartFile.isEmpty()) {
			Profile pic = new Profile();
			
			pic.setPicbytes(multipartFile.getBytes());
			pic.setUserid(user.getId());
			
			int num = profiledao.selectMaxNumber(user.getId());
			if(num == 1){
				profiledao.updateFile(pic);
			}else {
				profiledao.uploadFile(pic);
			}
			
		}
		
	
		return "redirect:/m/main#/profile";
	}
	
	
	@RequestMapping(value="/download/picture", method=RequestMethod.GET)
	public void downloadPicture(HttpSession usersession, HttpServletResponse response) throws IOException{
		User user = (User)usersession.getAttribute("user");
		log.info("#############################");
		log.info("########downloadPicture#########");
		log.info("#############################");
		
		Profile picture =  profiledao.downloadFile(user.getId());
		
		response.setContentType("image/jpg");
		response.getOutputStream().write(picture.getPicbytes());
	

	}
	
	
	
}
