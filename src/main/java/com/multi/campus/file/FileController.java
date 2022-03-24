package com.multi.campus.file;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.DatatypeConverter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.multi.campus.login.LoginDto;
import com.multi.campus.main.HomeController;



@Controller
public class FileController {
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	int count = 0;
	
	@Autowired
	FileService fileService;
	
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

	
	// formFile > reviewphoto 로 변경예정
	/*
	@GetMapping("/formFile")
	public String formFile() {
		log.info(">>>>> formFile");
		return "formFile";
	}
	*/

//	@PostMapping("/saveImage")
//	public ModelAndView saveImage(MemberDTO dto) {
//		Map<String, Object> hmap = new HashMap<String, Object>();
//		try {
//			System.out.println(dto.getImgFile());
//			hmap.put("img", dto.getImgFile().getBytes());
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		//dao.saveImage(hmap);
//		int result = fileService.saveImage(hmap);
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("result", result);
//		mv.setViewName("formFile");
//		return mv;
//	}
	
	@PostMapping("/saveImage")
	public ModelAndView saveImage(FileDTO dto) {
		Map<String, Object> hmap = new HashMap<String, Object>();
		System.out.println(dto.getImgFile());
		System.out.println("------saveImage-----------");
		hmap.put("name", dto.getName());
		System.out.println(dto.getTitle());
		hmap.put("title", dto.getTitle());
		hmap.put("description", dto.getDescription());
		try {
			hmap.put("img", dto.getImgFile().getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//hmap.put("img", dto.getImgFile().getBytes());
		
		//dao.saveImage(hmap);
		int result = fileService.saveImage(hmap);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("reviewphoto");
		return mv;
	}
	
	@GetMapping("/noticeboard")
	public ModelAndView noticeboard() {

        List<String> paramList1 = new ArrayList<String>();
        List<String> paramList2 = new ArrayList<String>();
        List<String> paramList3 = new ArrayList<String>();
        List<String> paramList4 = new ArrayList<String>();
        
        ModelAndView model = new ModelAndView("noticeboard");
	
        List<Map<String, Object>> list = fileService.getByteImages();
//      List<Map<String, Object>> list = fileService.getByteImages();

		
		System.out.println("----------");
		System.out.println(list.get(0));
		System.out.println(list.get(0).get("title"));
		
        model.addObject("list", list);
	 
        
		ArrayList<HashMap<String, Object>> hmap = new ArrayList<HashMap<String, Object>>();
		
		System.out.println("-------hash for start--dfdf--------");
		for(int i = 0; i < list.size(); i++) {
			HashMap<String, Object> test = new HashMap<String, Object>();
			test.put("name",list.get(i).get("name"));
			test.put("title",list.get(i).get("title"));
			test.put("description",list.get(i).get("description"));
			test.put("img", list.get(i).get("img"));
			
			System.out.println(test.get("name"));
			System.out.println(test.get("title"));
			System.out.println(test.get("description"));
			System.out.println(test.get("img"));
			
			hmap.add(test);
		}
        
      Iterator<HashMap<String, Object>> itr = hmap.iterator();
//        Iterator<MemberDTO> itr = list.iterator();
      	int count = 0;
      	
      	
      	System.out.println("count 테스트");
      	System.out.println(list.get(0).get("title"));
      	System.out.println(list.get(0).get("name"));
        while(itr.hasNext()){
        	Map<String,Object> element = (Map<String,Object>)itr.next();
        	//MemberDTO element = (MemberDTO)itr.next();
        	
        	
//        	String encoded= DatatypeConverter.printBase64Binary((byte[])element.get("img"));
        	String encoded = "";
			System.out.println("2-----itr-----");
			System.out.println((byte[])element.get("img"));
			encoded = DatatypeConverter.printBase64Binary((byte[])element.get("img"));
			
			System.out.println("3-----param-----");
			
			// 현재는 null이라 주석, 로그인 처리 시 주석 해체
			paramList1.add(list.get(count).get("name").toString());
			model.addObject("name",paramList1);
			
			paramList2.add(list.get(count).get("title").toString());
			model.addObject("title",paramList2);
			
			paramList3.add(list.get(count++).get("description").toString());
			model.addObject("description",paramList3);
			
        	paramList4.add(encoded);
        	//model.addObject("image",paramList4);
        	model.addObject("image",paramList4);
        }
        return model;
	}
	@GetMapping("/view2")
	public ModelAndView view2() {

        List<String> paramList1 = new ArrayList<String>();
        List<String> paramList2 = new ArrayList<String>();
        List<String> paramList3 = new ArrayList<String>();
        List<String> paramList4 = new ArrayList<String>();
        
        ModelAndView model = new ModelAndView("view2");
	
        List<Map<String, Object>> list = fileService.getByteImages();
//      List<Map<String, Object>> list = fileService.getByteImages();

		
		System.out.println("----------");
		System.out.println(list.get(0));
		System.out.println(list.get(0).get("title"));
		
        model.addObject("list", list);
	 
        
		ArrayList<HashMap<String, Object>> hmap = new ArrayList<HashMap<String, Object>>();
		
		System.out.println("-------hash for start----------");
		for(int i = 0; i < list.size(); i++) {
			HashMap<String, Object> test = new HashMap<String, Object>();
			test.put("name",list.get(i).get("name"));
			test.put("title",list.get(i).get("title"));
			test.put("description",list.get(i).get("description"));
			test.put("img", list.get(i).get("img"));
			
			System.out.println(test.get("title"));
			System.out.println(test.get("description"));
			System.out.println(test.get("img"));
			
			hmap.add(test);
		}
        
      Iterator<HashMap<String, Object>> itr = hmap.iterator();
//        Iterator<MemberDTO> itr = list.iterator();
      	int count = 0;
      	
      	
      	System.out.println("count 테스트");
      	System.out.println(list.get(0).get("title"));
        while(itr.hasNext()){
        	Map<String,Object> element = (Map<String,Object>)itr.next();
        	//MemberDTO element = (MemberDTO)itr.next();
        	
        	
//        	String encoded= DatatypeConverter.printBase64Binary((byte[])element.get("img"));
        	String encoded = "";
			System.out.println("2-----itr-----");
			System.out.println((byte[])element.get("img"));
			encoded = DatatypeConverter.printBase64Binary((byte[])element.get("img"));
			
			System.out.println("3-----param-----");
			
			// 현재는 null이라 주석, 로그인 처리 시 주석 해체
			//paramList1.add(list.get(count).get("name").toString());
			// model.addObject("name",paramList1);
			
			paramList2.add(list.get(count).get("title").toString());
			model.addObject("title",paramList2);
			
			paramList3.add(list.get(count++).get("description").toString());
			model.addObject("description",paramList3);
			
        	paramList4.add(encoded);
        	//model.addObject("image",paramList4);
        	model.addObject("image",paramList4);
        }
        return model;
	}
	// view >> noticeboard 로 변경 예정
	@GetMapping("/view")
	public String view() {
	    return "view";
	}
//	@GetMapping("/view2")
//	public ModelAndView view2() {
//
//        List<String> paramList = new ArrayList<String>();
//        ModelAndView model = new ModelAndView("view2");
//	
//        List<Map<String, Object>> list = fileService.getByteImages();
//        model.addObject("list", list);
//	 
//        Iterator<Map<String,Object>> itr = list.iterator();
//	 
//        while(itr.hasNext()){
//		
//        	Map<String,Object> element = (Map<String,Object>)itr.next();
//        	byte[] encoded= DatatypeConverter.printBase64Binary((byte[])element.get("img"));
//        	String encoded= DatatypeConverter.printBase64Binary((byte[])element.get("img"));
//  
//        	paramList.add(encoded);
//        	model.addObject("image",paramList);
//        }
//        return model;
//	}

	@GetMapping("/getByteImage")
	public ResponseEntity<byte[]> getByteImage() {
		Map<String, Object> map = fileService.getByteImage();
	    //Map<String, Object> map = dao.getByteImage();
	       byte[] imageContent = (byte[]) map.get("img");
	       final HttpHeaders headers = new HttpHeaders();
	       headers.setContentType(MediaType.IMAGE_PNG);
	       return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK);
	}
//	@GetMapping("/getByteImages")
//	public List<ResponseEntity<byte[]>> getByteImages() {
//		List<Map<String, Object>> list = fileService.getByteImages();
//		List<byte[]> imageContents = new ArrayList<byte[]>();
//		
//	    //Map<String, Object> map = dao.getByteImage();
//		/*
//		System.out.println(list.size());
//		System.out.println(list.get(0));
//		System.out.println(list.get(0).get("img"));
//		System.out.println((byte[])list.get(0).get("img"));
//		System.out.println("---------------------------");
//		//imageContents.add((byte[])list.get(0).get("img"));
//		System.out.println(imageContents.size());
//		imageContents.add((byte[]) "dfdfdfdfdf".getBytes());
//		System.out.println(imageContents.size());
//		*/
//		for(int i = 0; i < list.size(); i++) {
//			imageContents.add((byte[]) list.get(i).get("img"));
//		}
//		System.out.println(imageContents.size());
//	       final HttpHeaders headers = new HttpHeaders();
//	       headers.setContentType(MediaType.IMAGE_PNG);
//	       List<ResponseEntity<byte[]>> res = new ArrayList<ResponseEntity<byte[]>>();
//	       for(int i = 0; i < imageContents.size(); i++) {
//	    	   res.add(new ResponseEntity<byte[]>(imageContents.get(i), headers, HttpStatus.OK));
//	       }
//	       return res;
//	}
}

