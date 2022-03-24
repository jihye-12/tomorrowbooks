package com.multi.campus.review;

import java.util.List;

public interface ReviewService {
	public int insertreview(ReviewDTO dto);
	public List<ReviewDTO> reviewlist();
}
