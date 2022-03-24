package com.multi.campus.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.campus.dao.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewDAO dao;
	
	@Override
	public int insertreview(ReviewDTO dto) {
		return dao.insertreview(dto);
	}

	@Override
	public List<ReviewDTO> reviewlist() {
		return dao.reviewlist();
	}


}
