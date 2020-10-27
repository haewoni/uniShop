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
		
		System.out.println(jumunService.insertJumun(
				new Jumun(-9999, new Date(), "Waiting", 88800, "1346 7964 2585 1973", "06/23", "789", "김민정", "uni3", "GEN")));
		Jumun jumun = new Jumun(-9999, new Date(), "Canceled", 15151, "1346 7964 2585 1973", "06/23", "789", "김민정", "uni3", "EX");
		System.out.println(jumunService.updateJumun(jumun));
		System.out.println(jumunService.selectAll());
		System.out.println(jumunService.selectById("uni3"));
		System.out.println(jumunService.deleteJumunByNo(5));
	}

}
