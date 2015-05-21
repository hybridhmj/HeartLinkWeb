package com.heartlink.dao;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import com.heartlink.model.Profile;

public interface ProfileDao {
	
	public int InsertFirstProfileCondtion(HashMap<String, Object> map);
	
	public Profile selectProfileByName(String userid);
	
	public int updateProfileCondition(Profile condition);
	
	
	
	
	public void uploadFile(Profile picture) throws FileNotFoundException, IOException;
	
	public Profile downloadFile(String userid);

	public int updateFile(Profile pictue) throws FileNotFoundException, IOException;
	
	public int selectMaxNumber(String userid);
	
}
