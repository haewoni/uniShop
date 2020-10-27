package com.itwill.unishop.service.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.service.Jumun_DetailService;

public class Jumun_DetailServiceTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		Jumun_DetailService jumun_DetailService = (Jumun_DetailService) applicationContext.getBean("jumun_DetailServiceImpl");
		
		System.out.println("--------------------------------------------- 1. INSERT ---------------------------------------------");
//		System.out.println(jumun_DetailService.insertJumunDetail(
//				new Jumun_Detail(-9999, "PALACE", "L", 199000, "3", 3, "432733")));
		
		System.out.println("--------------------------------------------- 2. UPDATE ---------------------------------------------");
//		System.out.println(jumun_DetailService.updateJumunDetail(
//				new Jumun_Detail(-9999, "BAPE", "M", 120000, "1", 2, "432087")));
//		
//		System.out.println("--------------------------------------------- 3. SELECT ALL ---------------------------------------------");
//		System.out.println(jumun_DetailService.selectAll());
//		
//		System.out.println("--------------------------------------------- 4. SELECT BY JUMUN_NO ---------------------------------------------");
		System.out.println(jumun_DetailService.selectByNo(3));
//		
//		System.out.println("--------------------------------------------- 5. DELETE ---------------------------------------------");
//		System.out.println(jumun_DetailService.deleteJumunDetail(7));
		
	}

}
