package com.multi.campus.dao;

import org.springframework.stereotype.Repository;

import com.multi.campus.member.MemberDto;

@Repository
public interface MemberDao {
	
	public int insertMember(MemberDto dto); 
	
}
