package com.itwill.unishop.service;

import java.util.ArrayList;

import com.itwill.unishop.domain.Review;

public interface ReviewService {

	
	public int insertReview(Review review) throws Exception;
	
	public Review selectReviewByNo(String product_no) throws Exception ;
	
	public ArrayList<Review> selectReviewAll(String member_id) throws Exception;
	
}
