package com.multi.campus.member;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.campus.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao memberDao;
	
	@Override
	public int insertMember(MemberDto dto) {
		return memberDao.insertMember(dto);
	}

}
