package com.multi.campus.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemberController {

	private static final Logger log = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService memberService;

	@GetMapping("/memberform")
	public String memberform() {
		log.info(">>>>>>>>>>> 회원가입 페이지 이동");
		return "memberform";
	}

	@PostMapping("/insertMember")
	
	public void insertMember(HttpServletResponse response, MemberDto memberDto) {

		log.info(">>>>>>>>>>> 회원가입 저장");
		log.info(">>>>>>>>>>>>화면에서 넘어온 값 : "+memberDto);

		int result = memberService.insertMember(memberDto);
		log.info(">>>>>>>>>>> insertMember 결과 : "+result);
		
		//성공하면 숫자 1을 반환하고 실패시 0을 반환
		//1이라면 메인페이지로 이동. 0이라면 회원가입 페이지로 이동
		if(result > 0) {
			//Controller에서 alert 발생 후 redirect 하는 방법
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script>alert('회원가입을 하였습니다. 로그인 후 이용해주세요.');  location.href='/';</script>");
				out.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			//Controller에서 alert 발생 후 redirect
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script>alert('회원가입을 실패였습니다.');  location.href='/memberform';</script>");
				out.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	@GetMapping("/mypage")
	
	public String mypage() {
		log.info(">>>>>>>>>>> 마이페이지 이동");
		return "mypage";
	}
	
}