package com.itwill.unishop.mapper;

import java.util.ArrayList;
import com.itwill.unishop.domain.Review;

public interface ReviewMapper {

	public int insertReview(Review review);
	
	public Review selectReviewByNo(String product_no);
	
	public ArrayList<Review> selectReviewAll(String member_id);
	
	
}
