package com.multi.campus.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.campus.dao.LoginDao;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	LoginDao loginDao;
	
	//로그인조회
	@Override
	public LoginDto selectLogin(LoginDto loginDto) {
		return loginDao.selectLogin(loginDto);
	}
	
}
