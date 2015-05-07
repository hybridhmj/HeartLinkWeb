package com.webapp.model;

import java.util.Date;

public class Article {

	int id; // 글번호
//	Date postingDate; // 등록일
//	int readCount; // 조회수
	
	String writerName; // 작성자 이름
	String password; // 비밀번호
	String title; // 글 제목
	String content; // 글 내용
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
