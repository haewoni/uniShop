package com.itwill.unishop.repository.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.repository.Jumun_DetailRepository;

public class Jumun_DetailRepositoryTestMain {

	public static void main(String[] args) throws Exception{
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		Jumun_DetailRepository jumun_DetailRepository = (Jumun_DetailRepository) applicationContext.getBean("jumun_DetailRepositoryImpl");
		
//		Jumun_Detail jumun_Detail = new Jumun_Detail();
//		jumun_DetailRepository.insertJumunDetail(
//				new Jumun_Detail(-9999, "Overr", "XL", "Green", 99000, 
//								 "1", 8, "45648"));
//		System.out.println(jumun_DetailRepository.insertJumunDetail(jumun_Detail));
		
		
		System.out.println(jumun_DetailRepository.selectAll());
		
		
	}

}
