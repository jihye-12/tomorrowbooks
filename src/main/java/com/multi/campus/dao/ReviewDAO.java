package com.multi.campus.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.campus.review.ReviewDTO;


@Repository
public class ReviewDAO {

	@Autowired
	SqlSession session;

	public int insertreview(ReviewDTO dto) {
		int insertrow = session.insert("insertreview", dto);
		return insertrow;
	}

	
	public List<ReviewDTO> reviewlist(){
		List<ReviewDTO> list = session.selectList("reviewlist");
		return list;
	}
	
	
}



