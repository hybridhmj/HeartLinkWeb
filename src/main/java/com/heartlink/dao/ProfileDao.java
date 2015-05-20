package com.heartlink.dao;

import java.util.HashMap;
import java.util.List;

import com.heartlink.model.Condition;

public interface ProfileDao {
	
	public int InsertFirstProfileCondtion(HashMap<String, Object> map);
	
	public Condition selectProfileByName(String userid);
	
	
	
}
