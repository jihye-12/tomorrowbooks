package com.multi.campus.member;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.campus.dao.MemberDao;
import com.multi.campus.member.MemberDto;
import com.multi.campus.member.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao memberDao;
	
	@Override
	public int insertMember(MemberDto dto) {
		return memberDao.insertMember(dto);
	}
	
	@Override
	public MemberDto insertCheck(MemberDto dto) {
		System.out.println(" insertCheck dto : "+dto.toString());
		return memberDao.insertCheck(dto);
	}

}
