package com.multi.campus.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.multi.campus.login.LoginDto;

@Controller

public class HomeController {

	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/")
	public String home() {
		log.info(">>>>> home");
		return "index";
	}
	
	@GetMapping("ihou_copy_3")
	public void ihou_copy_3() {
		log.info(">>>>> ihou_copy_3");
	}
	
	@GetMapping("ihou_copy_2")
	public void ihou_copy_2() {
		log.info(">>>>> ihou_copy_2");
	}
	
	@GetMapping("ihou_copy")
	public void ihou_copy() {
		log.info(">>>>> ihou_copy");
	}
	
	@GetMapping("ihou")
	public void ihou() {
		log.info(">>>>> ihou");
	}
	
	@GetMapping("noticeboard")
	public void noticeboard() {
		log.info(">>>>> noticeboard");
	}
	
	@GetMapping("uncom-conveni")
	public void uncom_conveni() {
		log.info(">>>>> uncom-conveni");
	}
	
	@GetMapping("socrates")
	public void socrates() {
		log.info(">>>>> socrates");
	}
	
	@GetMapping("laSeine")
	public void laSeine() {
		log.info(">>>>> laSeine");
	}
	
	@GetMapping("dalergoot")
	public void dalergoot() {
		log.info(">>>>> dalergoot");
	}
	
	@GetMapping("midnightlibrary")
	public void midnightlibrary() {
		log.info(">>>>> midnightlibrary");
	}
	
	@GetMapping("postlist")
	public void postlist() {
		log.info(">>>>> postlist");
	}
	
	@GetMapping("ihou10")
	public void ihou10() {
		log.info(">>>>> ihou10");
	}
	
	@GetMapping("ihou11")
	public void ihou11() {
		log.info(">>>>> ihou11");
	}
	
	@GetMapping("scrapbook")
	public void scrapbook() {
		log.info(">>>>> scrapbook");
	}
}