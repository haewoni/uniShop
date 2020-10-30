package com.itwill.unishop.repository;

import java.util.ArrayList;
import com.itwill.unishop.domain.Review;

public interface ReviewRepository {

	public int insertReview(Review review) throws Exception;
	
	public ArrayList<Review> selectReviewByNo(String product_no) throws Exception ;
	
	public ArrayList<Review> selectReviewAll(String member_id) throws Exception;

	
}
