

package com.heartlink.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heartlink.model.Article;
import com.heartlink.model.QnAResult;


@Controller
@RequestMapping("/qna")
public class QnAController {

	static Log log = LogFactory.getLog(QnAController.class);

	
	
	@Autowired
	DataSource datasource;
	
	@RequestMapping(value="/aaa", method=RequestMethod.GET)
	@ResponseBody
	public List<Article> question() {
		
		log.info("########################################");
		log.info("List<Article> question()...");
		log.info("########################################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		List<Article> list = template.query("select * from article order by 1 desc", new BeanPropertyRowMapper<Article>(Article.class));
	
		if(list.isEmpty()){
			log.info("## list empty ##");
		}else{
			log.info("## list not empty ##");
		}
		
		for(Article l : list) {
			log.info(l.getTitle());
		}

		return list;
	}
	

	@RequestMapping(value="/bbb", method=RequestMethod.POST)
	@ResponseBody
	public QnAResult question(@RequestBody Article article, HttpSession session) throws SQLException { // 로그인 처리
		
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		log.info("question() POST.......");
		log.info("title = " + article.getTitle());
		log.info("writerName = " + article.getWriterName());
		log.info("password = " + article.getPassword());
		log.info("content = " + article.getContent());
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");

		JdbcTemplate template = new JdbcTemplate(datasource);
		
		QnAResult result = new QnAResult();
		
		int id = template.queryForInt("select MAX(id) from article");
		id += 1;
		log.info("id =" + id);
		article.setId(id);
		
		String sql = "insert into article (id, writerName, password, title, content) values (?, ?, ?, ?, ?)";
		int num = template.update(sql, article.getId(), article.getWriterName(), article.getPassword(), article.getTitle(), article.getContent());
		
		result.setStatus(true);
		

		return result;
	
	}
	
	
}
