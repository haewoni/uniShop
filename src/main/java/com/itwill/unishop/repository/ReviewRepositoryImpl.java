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
	public Review selectReviewByNo(int no) throws Exception {
		
		Review reviewOne = reviewMapper.selectReviewByNo(no);
		return reviewOne;
	};
	@Override
	public ArrayList<Review> selectReviewAll() throws Exception {
		
		ArrayList<Review> reviewsList = (ArrayList<Review>)reviewMapper.selectReviewAll();
		return reviewsList;
	};
	@Override
	public int updateReviewById(Review review) throws Exception {
		
		int updateCount = reviewMapper.updateReviewById(review);
		return updateCount;
	};
	@Override
	public int deleteReviewById(int no) throws Exception {
		
		int deleteCount = reviewMapper.deleteReviewById(no);
		return deleteCount;
	}
}
