package com.itwill.unishop.service.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Review;
import com.itwill.unishop.service.ReviewService;

public class ReviewServiceTestMain {

	public static void main(String[] args) throws Exception{
		
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		ReviewService reviewService = (ReviewService)applicationContext.getBean("reviewServiceImpl");
		
		//System.out.println(reviewService.selectReviewAll());
		
		
		//Review insertreview = new Review(102, "aaa", "a@gmail.com", "aaa", 5, "aaa", "uni1", "432640");
		//System.out.println(reviewService.insertReview(insertreview));
		
		System.out.println(reviewService.selectReviewByNo("432640"));

		

	}

}
