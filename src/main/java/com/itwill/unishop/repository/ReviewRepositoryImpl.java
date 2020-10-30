package com.itwill.unishop.repository;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.unishop.domain.Review;
import com.itwill.unishop.mapper.ReviewMapper;
@Repository("reviewRepository")
public class ReviewRepositoryImpl implements ReviewRepository{

	@Autowired
	private ReviewMapper reviewMapper;
	
	@Override
	public int insertReview(Review review) throws Exception {
		
		int insertCount = 0;
		insertCount = reviewMapper.insertReview(review);
		return insertCount;
	};
	@Override
	public ArrayList<Review> selectReviewByNo(String product_no) throws Exception {
		
		ArrayList<Review> reviewByNo = reviewMapper.selectReviewByNo(product_no);
		return reviewByNo;
	};
	@Override
	public ArrayList<Review> selectReviewAll(String member_id){
		ArrayList<Review> reviewsList = (ArrayList<Review>)reviewMapper.selectReviewAll(member_id);
		return reviewsList;
	};

}
