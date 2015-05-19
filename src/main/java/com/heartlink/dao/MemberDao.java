package com.heartlink.dao;

import com.heartlink.model.Member;

public interface MemberDao {
	
	public Member SelectMemberById(String rgid);
	
	public int InsertMemberRegister(Member member);
	
}
