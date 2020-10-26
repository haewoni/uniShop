package com.itwill.unishop.repository.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.domain.Review;
import com.itwill.unishop.repository.MemberRepository;
import com.itwill.unishop.repository.ReviewRepository;

public class ReviewRepositoryTestMain {

	public static void main(String[] args) throws Exception {
		
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		ReviewRepository reviewRepository = (ReviewRepository)applicationContext.getBean("reviewRepository");
		//System.out.println(reviewRepository.selectReviewByNo(1));
		
		//System.out.println(reviewRepository.selectReviewAll());
		//Review insertreview = reviewRepository.insertReview(new Review(101, "aaa", "a@gmail.com", "aaa", 5, "aaa", "uni1", "432614"));
		//Review insertreview = new Review(101, "aaa", "a@gmail.com", "aaa", 5, "aaa", "uni1", "432614");
		//System.out.println(reviewRepository.insertReview(insertreview));
		
		//Review updateReview = new Review(101, "bbb", "bbb@gmail.com", "bbb", 5, "bbb", "uni1", "432614");
		//System.out.println(reviewRepository.updateReviewById(updateReview));
		System.out.println(reviewRepository.deleteReviewById(101));
		


	}

}
