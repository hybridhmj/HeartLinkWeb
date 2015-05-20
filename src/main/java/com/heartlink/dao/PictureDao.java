package com.heartlink.dao;

import java.io.FileNotFoundException;
import java.io.IOException;

import com.heartlink.model.Picture;


public interface PictureDao {
	
	public void uploadFile(Picture picture) throws FileNotFoundException, IOException;
	
	public Picture downloadFile(String userid);

	public int updateFile(Picture pictue);
	
	public int selectMaxNumber(String userid);
	
	
}
