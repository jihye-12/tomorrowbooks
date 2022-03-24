package com.multi.campus.photo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.multi.campus.login.LoginDto;
import com.multi.campus.main.HomeController;

@Controller
public class PhotoController {
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("reviewphoto")
	public String reviewphoto(HttpSession session, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		LoginDto result = (LoginDto)session.getAttribute("loginMemberInfo");
		
		if(result == null) {
			out.println("<script>alert('로그인 후 이용해주세요 :)'); location.href='/loginform';</script>");
			out.flush();
		}
		log.info(">>>>> reviewphoto");
		return "reviewphoto";
	}
	
	
}
