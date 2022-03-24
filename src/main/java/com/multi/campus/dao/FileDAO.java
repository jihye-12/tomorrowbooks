package com.multi.campus.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.campus.file.FileDTO;


@Repository
public class FileDAO {

	@Autowired
	SqlSession session;
	
	public int saveImage(Map<String, Object> hmap) throws SQLException {
		int saveImgrow = session.insert("saveImage", hmap);
		return saveImgrow;
	}
	
	public Map<String, Object> getByteImage() {
	    return session.selectOne("getByteImage");
	}
//	public List<Map<String, Object>> getByteImages() {
//		List<Map<String, Object>> list = session.selectList("getByteImages");
//	    return list;
//	}

	public List<Map<String, Object>> getByteImages() {
		List<Map<String, Object>> list = session.selectList("getByteImages");
	    return list;
	}
	
	
	
//	public int insertmember(FileDTO dto) {
//		int insertrow = session.insert("insertmember", dto);
//		return insertrow;
//	}
	
	
	
	
	
//	//����
//	public int updatemember(FileDTO dto) {
//		return session.update("updatemember", dto);//id, name, address
//	}
//
//	//����
//	public int deletemember(String id) {
//		return session.delete("deletemember", id);
//		
//	}
//	
//	public List<FileDTO> memberlist(){
//		List<FileDTO> list = session.selectList("memberlist");
//		return list;
//	}
//	
//	public List<FileDTO> memberlist(int page){
//		int [] limit = new int[] { (page-1)*5 , 5};
//		List<FileDTO> list = session.selectList("paginglist", limit);//<select id="??">
//		return list;
//	}	
//	
//	public List<String> memberlist(String[] address){
//		List<String> list = session.selectList("addresssearch", address);//<select id="??">
//		return list;
//	}	
}
