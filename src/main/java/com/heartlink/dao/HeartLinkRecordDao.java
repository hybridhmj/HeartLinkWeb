package com.heartlink.dao;

import java.util.HashMap;

public interface HeartLinkRecordDao {
	
	public int insertHeartLinkRecord(HashMap<String, Object> map);
	
	public int selectMaxNumber();
	
}
