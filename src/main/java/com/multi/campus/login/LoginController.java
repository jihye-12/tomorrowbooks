package com.multi.campus.login;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	private static final Logger log = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	LoginService loginService;
	

	@GetMapping("/loginform")
	public String loginform() {
		log.info(">>>>>>>>>>> 로그인 페이지 이동");
		return "loginform";
	}
	
	@PostMapping("/selectLogin")
	public void selectLogin(HttpServletResponse response, HttpSession session, LoginDto loginDto) {

		log.info(">>>>>>>>>>>>화면에서 넘어온 값");
		log.info(">>>>>>>>>>>>loginDto" +loginDto.toString());
		
		log.info(">>>>>>>>>>> 데이터베이스 로그인 조회");
		
		LoginDto resultVo = new LoginDto();
		
		resultVo = loginService.selectLogin(loginDto);

		log.info(">>>>>>>>>>> insertMember 결과 : "+resultVo);
		
		//일치하는 데이터가 있으면 로그인 성공
		if(resultVo != null) {
			
			//세션에 회원정보를 담는다.
			session.setAttribute("loginMemberInfo", resultVo);
			
			//Controller에서 alert 발생 후 redirect 하는 방법
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script>alert('로그인을 성공하였습니다.');  location.href='/';</script>");
				out.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			//Controller에서 alert 발생 후 redirect 하는 방법
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script>alert('회원정보를 찾을 수 없습니다.');  location.href='/loginform';</script>"); //ajax로 변환하기
				out.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	@GetMapping("/logout")
	public void logout(HttpServletResponse response, HttpSession session) {
		log.info(">>>>>>>>>>> 로그아웃");
		//로그인으로 생성한 세션 다 지운다
		session.invalidate();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out;
		try {
			out = response.getWriter();
			out.println("<script>alert('로그아웃 되었습니다.'); location.href='/';</script>");
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}