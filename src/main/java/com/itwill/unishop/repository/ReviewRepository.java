package com.itwill.unishop.repository;

import java.util.ArrayList;
import com.itwill.unishop.domain.Review;

public interface ReviewRepository {

	public int insertReview(Review review) throws Exception;
	
	public Review selectReviewByNo(int no) throws Exception ;
	
	public ArrayList<Review> selectReviewAll() throws Exception;
	
	public int updateReviewById(Review review) throws Exception;
	
	public int deleteReviewById(int no) throws Exception;
	
	
	
}