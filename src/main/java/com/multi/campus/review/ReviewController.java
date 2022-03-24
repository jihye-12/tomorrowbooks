package com.multi.campus.review;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.multi.campus.login.LoginDto;
import com.multi.campus.main.HomeController;

@Controller
public class ReviewController {
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	ReviewService service;

	@PostMapping("/membermybatisinsert")
	public ModelAndView insertresult(HttpServletResponse response, ReviewDTO dto) {
		//dto.setId(request.getParameter("id")
		int result = service.insertreview(dto);//id, email, phone �ߺ� �Ұ���
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);//int
		mv.setViewName("/reviewwrite");
		
		//수행 완료 후 화면이동
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out;
		try {
			out = response.getWriter();
			out.println("<script>alert('성공적으로 업로드하였습니다!');  location.href='/postlist';</script>");
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
				
		return mv;
	}
	
	@RequestMapping("/postlist")
	public ModelAndView reviewlist() {
		ModelAndView mv = new ModelAndView();
		List<ReviewDTO> list = service.reviewlist();
		System.out.println(list);
		System.out.println("==================");
		mv.addObject("reviewlist", list);
		mv.setViewName("/postlist");
		return mv;
	}
	
	@GetMapping("reviewwrite")
	public String reviewwrite(HttpSession session, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		LoginDto result = (LoginDto)session.getAttribute("loginMemberInfo");
		if(result == null) {
			out.println("<script>alert('로그인 후 이용해주세요 :)'); location.href='/loginform';</script>");
			out.flush();
		}
		log.info(">>>>> reviewwrite");
		return "reviewwrite";
	}
}
