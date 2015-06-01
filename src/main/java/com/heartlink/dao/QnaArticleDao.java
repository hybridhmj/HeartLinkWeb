package com.heartlink.dao;

import java.util.List;

import com.heartlink.model.Article;
import com.heartlink.model.Callpage;
import com.heartlink.model.Delete;
import com.heartlink.model.Show;
import com.heartlink.model.Update;

public interface QnaArticleDao {

	// write_form
	public int selectMaxId();
	public int writeNewArticle(Article article);
	
	// show_content
	public Article showSelectIdsContent(Show show);
	
	// delete_list
	public Article deleteSelectIdsContent(Delete del);
	public int deleteSelectIdsContentDelete(Delete del);
	
	// update_list
	public Article updateSelectIdsContent(Update up);
	
	// update_form
	public int updateSelectIdsContentUpdate(Article article);
	
	
	// qnapage
	public int qnapage();
	
	// callpage
//	public List<Article> callpage(Callpage cla);
	
	
	
	
	
	
}
