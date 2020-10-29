package com.itwill.unishop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.unishop.domain.Review;
import com.itwill.unishop.repository.ReviewRepository;
@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewRepository reviewRepository;
	
	@Override
	public int insertReview(Review review) throws Exception{
		return reviewRepository.insertReview(review);
	}

	@Override
	public ArrayList<Review> selectReviewAll(String member_id) throws Exception{
		return reviewRepository.selectReviewAll(member_id);
	}
	
	@Override
	public Review selectReviewByNo(String product_no) throws Exception{
		return reviewRepository.selectReviewByNo(product_no);
	}
	

	
	
}
