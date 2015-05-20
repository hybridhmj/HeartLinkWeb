package com.heartlink.model;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class Picture {

	public String userid;
	public byte[] picbytes;
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public byte[] getPicbytes() {
		return picbytes;
	}
	public void setPicbytes(byte[] picbytes) {
		this.picbytes = picbytes;
	}
	
	




}
