package com.multi.campus.file;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.campus.dao.FileDAO;

@Service
public class FileServiceImpl implements FileService {
	@Autowired
	FileDAO dao;

	@Override
	public int saveImage(Map<String, Object> hmap) {
		try {
		dao.saveImage(hmap);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
//	@Override
//	public int saveImage(MemberDTO dto) {
//		try {
//		dao.saveImage(dto.getImgFile().getBytes());
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//		return 0;
//	}
	
	@Override
	public Map<String, Object> getByteImage() {
		return dao.getByteImage();
	}

//	@Override
//	public List<Map<String, Object>> getByteImages() {
//		return dao.getByteImages();
//	}
	
	@Override
	public List<Map<String, Object>> getByteImages() {
		return dao.getByteImages();
	}

	
	
}
