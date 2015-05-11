

package com.heartlink.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import javax.swing.text.StyledEditorKit.BoldAction;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heartlink.model.Article;
import com.heartlink.model.Delete;
import com.heartlink.model.QnAResult;
import com.heartlink.model.Qnapage;
import com.heartlink.model.Show;


@Controller
@RequestMapping("/qna")
public class QnAController {

	static Log log = LogFactory.getLog(QnAController.class);
	static int totalPageNum=0;
	
	
	@Autowired
	DataSource datasource;
	
	// list_view
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
	
	// write_form
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

	// show_content
	@RequestMapping(value="/ccc", method=RequestMethod.POST)
	@ResponseBody
	public Article question(@RequestBody Show show) {
		
		log.info("########################################");
		log.info("show_content = > slected id = " + show.getId());
		log.info("########################################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		String sql = "select * from article where id = ?";
		
		Article article = template.queryForObject(sql, new Object[] {show.getId()}, new BeanPropertyRowMapper<Article>(Article.class));

		
		return article;
	}
	
	// delete_list
	@RequestMapping(value="/ddd", method=RequestMethod.POST)
	@ResponseBody
	public boolean question(@RequestBody Delete del) {
		
		log.info("########################################");
		log.info("delete_list = > slected id = " + del.getId() 
				+ " // password = " + del.getPassword());
		log.info("########################################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		String sql = "select * from article where id = ?";
		
		Article article = template.queryForObject(sql, new Object[] {del.getId()}, new BeanPropertyRowMapper<Article>(Article.class));
		
//		log.info("password" + article.getPassword());
		
		boolean correct = true;
		
		if(del.getPassword().equals(article.getPassword())) {
			correct = true;
			log.info(correct);
			sql = "delete from article where id = ?";
			int count = template.update(sql, del.getId());
			
			if(count > 0) {
				log.info("삭제 완료");
			} else {
				log.info("없는 데이터를 삭제하려고 합니다.");
			}
			
		} else {
			correct = false;
			log.info(correct);
		}
		
		return correct;
	}
	

//	// update_list
//	@RequestMapping(value="/eee", method=RequestMethod.POST)
//	@ResponseBody
//	public boolean question(@RequestBody Delete del, int num) {
//		
//		log.info("########################################");
//		log.info("delete_list = > slected id = " + del.getId() 
//				+ " // password = " + del.getPassword());
//		log.info("########################################");
//		
//		JdbcTemplate template = new JdbcTemplate(datasource);
//		String sql = "select * from article where id = ?";
//		
//		Article article = template.queryForObject(sql, new Object[] {del.getId()}, new BeanPropertyRowMapper<Article>(Article.class));
//		
////		log.info("password" + article.getPassword());
//		
//		boolean correct = true;
//		
//		if(del.getPassword().equals(article.getPassword())) {
//			correct = true;
//			log.info(correct);
//			sql = "delete from article where id = ?";
//			int count = template.update(sql, del.getId());
//			
//			if(count > 0) {
//				log.info("삭제 완료");
//			} else {
//				log.info("없는 데이터를 삭제하려고 합니다.");
//			}
//			
//		} else {
//			correct = false;
//			log.info(correct);
//		}
//		
//		return correct;
//	}
	
	
	
	@SuppressWarnings("deprecation")
	@RequestMapping(value="/qnapage", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Integer> page() {
		
		log.info("########################################");
		log.info("#########QnaPAGE######################");
		log.info("########################################");
		
		
		Qnapage totalpage = new Qnapage();
		
		int qnaTotalRow=0;
		int qnaTotalPage=0;
		
		JdbcTemplate template = new JdbcTemplate(datasource);
		qnaTotalRow = template.queryForInt("select count(*) from article");
		
		log.info("#########################################"+qnaTotalRow);
		
		qnaTotalPage = qnaTotalRow / 10;
		
		
		if( qnaTotalRow % 10 > 0){
			qnaTotalPage++;
		}

		totalPageNum = qnaTotalPage;
		totalpage.setQnaTotalPage(qnaTotalPage);
		
		ArrayList<Integer> list = new ArrayList<Integer>();
		for(int i=1; i<=qnaTotalPage; i++){
			if(i==6){
				break;
			}
			list.add(i);
		}
		return list;
	}
	

	@RequestMapping(value="/qnapageplus", method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<Integer> pageplus(@RequestBody Qnapage qnaTotalPage) {
		
		log.info("#############lastValue()#################"+qnaTotalPage.getQnaTotalPage());
		
		Integer beforeqnaTotalPage = qnaTotalPage.getQnaTotalPage();
		
		Integer newqnaTotalPage = 0;
		
		if(totalPageNum >= (beforeqnaTotalPage + 5)){
			newqnaTotalPage = beforeqnaTotalPage + 5;
		}else {
			int rest = totalPageNum%beforeqnaTotalPage;
			newqnaTotalPage = beforeqnaTotalPage + rest;
		}

		
		ArrayList<Integer> list = new ArrayList<Integer>();
		for(int i=(beforeqnaTotalPage+1); i<=newqnaTotalPage; i++){
			if(i==(newqnaTotalPage+1)){
				break;
			}
			list.add(i);
		}
		return list;
	}
	
	
	
	
	
	@RequestMapping(value="/qnapageminus", method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<Integer> pageminus(@RequestBody Qnapage qnaTotalPage) {
		
		log.info("#############lastValue()#################"+qnaTotalPage.getQnaTotalPage());
		
		Integer newqnaTotalPage = qnaTotalPage.getQnaTotalPage()-1;

		ArrayList<Integer> list = new ArrayList<Integer>();
		for(int i=(newqnaTotalPage-4); i<=newqnaTotalPage; i++){
			list.add(i);
		}
		return list;
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/callpage", method=RequestMethod.POST)
	@ResponseBody
	public List<Article> callpage(@RequestBody Qnapage qnaTotalPage) {
		
		log.info("########################################");
		log.info("List<Article> callpage()...");
		log.info("########################################");
		
		JdbcTemplate template = new JdbcTemplate(datasource);

		int start = (qnaTotalPage.getQnaTotalPage()*10)-9;
		int end = 10*qnaTotalPage.getQnaTotalPage();
		
		log.info("########################################");
		log.info(start);
		log.info("########################################");
		log.info(end);
		
		String sql = "select * from (select rownum rn, aa.* from (select * from article order by id desc)aa) where rn between ? and ?";

		 List<Article> list =template.query(sql, new Object[] {start, end}, new BeanPropertyRowMapper<Article>(Article.class));
		
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
	
	
	
	
	
}
