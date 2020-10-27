package com.itwill.unishop.service.test;

import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.service.JumunService;

public class JumunServiceTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		JumunService jumunService = (JumunService) applicationContext.getBean("jumunServiceImpl");
		
		System.out.println("--------------------------------------------- 1. INSERT ---------------------------------------------");
//		System.out.println(jumunService.insertJumun(
//				new Jumun(-9999, new Date(), "Waiting", 88800, "1346 7964 2585 1973", "06/23", "789", "김민정", "uni3", "GEN")));
//		Jumun jumun1 = new Jumun(-9999, new Date(), "Waiting", 15151, "1111 2222 3333 4444", "12/12", "987", "정수환", "uni4", "EX");
//		System.out.println(jumunService.insertJumun(jumun1));
		
		System.out.println("--------------------------------------------- 2. UPDATE ---------------------------------------------");
//		System.out.println(jumunService.updateJumun(new Jumun(5, new Date(), "Canceled", 212121, "1111 2222 3333 4444", "12/12", "987", "신지수", "uni4", "EX")));
		
		System.out.println("--------------------------------------------- 3. SELECT ALL ---------------------------------------------");
//		System.out.println(jumunService.selectAll());
		
		System.out.println("--------------------------------------------- 4. SELECT BY ID ---------------------------------------------");
//		System.out.println(jumunService.selectById("uni3"));
		
		System.out.println("--------------------------------------------- 5. DELETE ---------------------------------------------");
//		System.out.println(jumunService.deleteJumunByNo(5));
	}

}
