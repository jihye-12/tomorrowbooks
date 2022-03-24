package com.multi.campus.file;

import java.util.List;
import java.util.Map;


public interface FileService {

	public int saveImage(Map<String, Object> hmap);
//	public int saveImage(MemberDTO dto);
	public Map<String, Object> getByteImage();
//	public List<Map<String, Object>> getByteImages();
	public List<Map<String, Object>> getByteImages();

}
