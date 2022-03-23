package com.multi.campus.dao;

import org.springframework.stereotype.Repository;

import com.multi.campus.login.LoginDto;

@Repository
public interface LoginDao {
	
	public LoginDto selectLogin(LoginDto loginDto); 
	
}
