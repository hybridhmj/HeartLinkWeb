package com.heartlink.dao;

import java.util.HashMap;
import java.util.List;

import com.heartlink.model.QuestionAnswer;

public interface MatchingRecordDao {
	
	public int insertMatchingRecord(HashMap<String, Object> map);
	
	public List<QuestionAnswer> selectMatchingRecordAllByQuestionNum(String questionnum);
	
	public int selectMaxNumber(String userid);
}
