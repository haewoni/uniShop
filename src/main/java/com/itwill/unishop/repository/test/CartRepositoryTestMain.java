package com.itwill.unishop.repository.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.repository.CartRepository;
import com.itwill.unishop.repository.MemberRepository;

public class CartRepositoryTestMain {

	public static void main(String[] args) throws Exception{
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		CartRepository cartRepository = (CartRepository) applicationContext.getBean("cartRepository");
		System.out.println(cartRepository.selectCartAll("uni1"));
				
	}

}
