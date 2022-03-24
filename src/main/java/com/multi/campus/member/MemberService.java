package com.multi.campus.member;

import java.util.List;
import java.util.Map;

import com.multi.campus.member.MemberDto;

public interface MemberService {

	//회원가입
	public int insertMember(MemberDto dto);

	//회원가입 중복검사(이메일,닉네임)
	public MemberDto insertCheck(MemberDto dto);
}
