package com.multi.campus.dao;

import com.multi.campus.member.MemberDto;
public interface MemberDao {
	
	public int insertMember(MemberDto dto); 
	
	public MemberDto insertCheck(MemberDto dto);
	
}
