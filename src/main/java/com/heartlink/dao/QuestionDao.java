package com.heartlink.dao;

import java.util.List;

import com.heartlink.model.Question;

public interface QuestionDao {

	public List<Question> SelectQuestionByName(String type);
	
}
