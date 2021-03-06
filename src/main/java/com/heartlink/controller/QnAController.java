

package com.heartlink.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import javax.swing.text.StyledEditorKit.BoldAction;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heartlink.dao.QnaArticleDao;
import com.heartlink.model.Article;
import com.heartlink.model.Callpage;
import com.heartlink.model.Delete;
import com.heartlink.model.QnAResult;
import com.heartlink.model.Qnapage;
import com.heartlink.model.Show;
import com.heartlink.model.Update;
import com.heartlink.model.User;


@Controller
@RequestMapping("/qna")
public class QnAController {

	static Log log = LogFactory.getLog(QnAController.class);
	static int totalPageNum=0;
	int readCount = 0;
	
	@Autowired
	DataSource datasource; // JDBC
	
	@Autowired
	QnaArticleDao qnaArticleDao; // MyBatis
	
	int id;
	
	// write_form
	@RequestMapping(value="/bbb", method=RequestMethod.POST)
	@ResponseBody
	public QnAResult question(@RequestBody Article article, HttpSession session) throws SQLException {
		
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		log.info("question() POST.......");
		log.info("title = " + article.getTitle());
		log.info("writerName = " + article.getWriterName());
		log.info("password = " + article.getPassword());
		log.info("content = " + article.getContent());
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");

//		JdbcTemplate template = new JdbcTemplate(datasource);
		
		QnAResult result = new QnAResult();	
		
//		int id = template.queryForInt("select MAX(id) from article");
		if(id != 0) {
			id = qnaArticleDao.selectMaxId();
		}
		
		id += 1;
		article.setId(id);
		
		Date writeDate = new Date();
		String date = (writeDate.getYear()+1900) + "." + (writeDate.getMonth()+1) + "." + (writeDate.getDate()) + " " 
					+ (writeDate.getHours()) + ":" + (writeDate.getMinutes());

		article.setWriteDate(date);
		
		log.info("id = " + id + "writeDate = " + writeDate);
		
		int num = qnaArticleDao.writeNewArticle(article);
		result.setStatus(true);
		
//		try {
//			
//			String sql = "insert into article (id, writerName, password, title, content) values (?, ?, ?, ?, ?)";
//			int num = template.update(sql, article.getId(), article.getWriterName(), article.getPassword(), article.getTitle(), article.getContent());
//			
//			result.setStatus(true);
//		}
//		catch(EmptyResultDataAccessException e) {
//				log.info("EmptyResultDataAccessException");
//		}

		return result;
	
	}

	// show_content
	@RequestMapping(value="/ccc", method=RequestMethod.POST)
	@ResponseBody
	public Article question(@RequestBody Show show) {
			
		log.info("########################################");
		log.info("show_content, slected id = " + show.getId());
		log.info("########################################");
		
		Article article = qnaArticleDao.showSelectIdsContent(show);
		
//		JdbcTemplate template = new JdbcTemplate(datasource);
//		String sql = "select * from article where id = ?";
//		Article article = template.queryForObject(sql, new Object[] {show.getId()}, new BeanPropertyRowMapper<Article>(Article.class));
		
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
//		Article article = template.queryForObject(sql, new Object[] {del.getId()}, new BeanPropertyRowMapper<Article>(Article.class));
		Article article = qnaArticleDao.deleteSelectIdsContent(del);
		
//		log.info("password" + article.getPassword());
		
		boolean correct = true;
		
		if(del.getPassword().equals(article.getPassword())) {
			correct = true;
			log.info(correct);
//			sql = "delete from article where id = ?";
//			int count = template.update(sql, del.getId());
			
			int count = qnaArticleDao.deleteSelectIdsContentDelete(del);
			
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
	

	// update_list
	@RequestMapping(value="/eee", method=RequestMethod.POST)
	@ResponseBody
	public boolean question(@RequestBody Update up) {
		
		log.info("########################################");
		log.info("update_list = > slected id = " + up.getId() 
				+ " // password = " + up.getPassword());
		log.info("########################################");
		
//		JdbcTemplate template = new JdbcTemplate(datasource);
//		String sql = "select * from article where id = ?";
//		Article article = template.queryForObject(sql, new Object[] {up.getId()}, new BeanPropertyRowMapper<Article>(Article.class));
		
		Article article = qnaArticleDao.updateSelectIdsContent(up);
		
		boolean correct = true;
		
		if(up.getPassword().equals(article.getPassword())) {
			correct = true;
			log.info(correct);
		} else {
			correct = false;
			log.info(correct);
		}
		
		return correct;
	}
	
	// update_form
		@RequestMapping(value="/fff", method=RequestMethod.POST)
		@ResponseBody
		public boolean question(@RequestBody Article article) {
			
			log.info("########################################");
			log.info("question() POST.......");
			log.info("id = " + article.getId());
			log.info("title = " + article.getTitle());
			log.info("writerName = " + article.getWriterName());
			log.info("password = " + article.getPassword());
			log.info("content = " + article.getContent());
			log.info("########################################");

			Boolean correct = true;
			
			Date writeDate = new Date();
			String date = (writeDate.getYear()+1900) + "." + (writeDate.getMonth()+1) + "." + (writeDate.getDate()) + " " 
						+ (writeDate.getHours()) + ":" + (writeDate.getMinutes());

			article.setWriteDate(date);
			log.info(article.getWriteDate());
			
			int num = qnaArticleDao.updateSelectIdsContentUpdate(article);
			
			if(num > 0) {
				correct = true;
			} else {
				correct = false;
				log.info("없는 데이터를 수정하려고 합니다.");
			}
			
//			JdbcTemplate template = new JdbcTemplate(datasource);
//			String sql = "update article set writerName = ?, password = ?, title = ?, content = ? where id = ?";
			
//			try {
//				int num = template.update(sql, article.getWriterName(), article.getPassword(), article.getTitle(),
//						article.getContent(), article.getId());
				
//				log.info("num = " + num);
//				if(num > 0) {
//					correct = true;
//				} else {
//					correct = false;
//					log.info("없는 데이터를 수정하려고 합니다.");
//				}
//			} catch(DataAccessException e) {
//				correct = false;
//				log.info("DataAccessException");
//			}
//			
			return correct;
		
		}
	
	
	
	
	
	
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
		
//		JdbcTemplate template = new JdbcTemplate(datasource);
//		qnaTotalRow = template.queryForInt("select count(*) from article");
		qnaTotalRow = qnaArticleDao.qnapage();
		
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
		
		Callpage cal = new Callpage();
		cal.setStart(start);
		cal.setEnd(end);
		
		String sql = "select * from (select rownum rn, aa.* from (select * from article order by id desc)aa) where rn between ? and ?";
		List<Article> list = template.query(sql, new Object[] {start, end}, new BeanPropertyRowMapper<Article>(Article.class));
		
//		List<Article> list = qnaArticleDao.callpage(cal);
		
		if(list.isEmpty()){
			log.info("## list empty ##");
			id = 0;
		}else{
			log.info("## list not empty ##");
		}
		
		for(Article l : list) {
			log.info(l.getTitle());
		}

		return list;
	}
	
	
	
}
