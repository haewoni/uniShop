package com.itwill.unishop.mapper;

import java.util.ArrayList;
import com.itwill.unishop.domain.Review;

public interface ReviewMapper {

	public int insertReview(Review review);
	
	public Review selectReviewByNo(int no);
	
	public ArrayList<Review> selectReviewAll();
	
	public int updateReviewById(Review review);
	
	public int deleteReviewById(int no);
	
	
}
