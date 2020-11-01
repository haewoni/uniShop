package com.itwill.unishop.repository.test;

import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.repository.JumunRepository;

public class JumunRepositoryTestMain {

	public static void main(String[] args) throws Exception{
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		JumunRepository jumunRepository = (JumunRepository) applicationContext.getBean("jumunRepositoryImpl");
		
		/********************** insert **********************/
		System.out.println(jumunRepository.insertJumun(
				new Jumun(-9999, new Date(), "waiting", 77777, "1346 7964 2585 1973", "06/23", "789", "김민정", "uni3", "EX")));
		System.out.println();
//		System.out.println(jumunRepository.insertJumun(
//				new Jumun(-9999, new Date(), "waiting", 88888, "1346 7964 2585 1973", "06/23", "789", "김민정", "uni3", "GEN")));
		/*
		 	번호는 순서대로, 주문하는 날짜로 생성하고 
		 */
		
		/********************** select **********************/
//		System.out.println(jumunRepository.selectById("uni1"));
//		System.out.println();
//		System.out.println(jumunRepository.selectById("uni2"));
//		System.out.println();
//		System.out.println(jumunRepository.selectById("uni3"));
//		System.out.println();
//		
//		System.out.println(jumunRepository.selectAll());
		
		
		
		/********************** update **********************/
//		Jumun jumun1 = new Jumun(5, new Date(), "waiting", 987654, "1111 2222 3333 8888", "01/26", "222", "수환잉", "uni3", "GEN");
//		System.out.println(jumunRepository.updateJumun(jumun1));
		Jumun jumun2 = new Jumun("4123 1231 2321 1212","20/12","754","신혜원","uni2");
		System.out.println(jumunRepository.updateJumunCard(jumun2));
		
		
		/********************** delete **********************/
//		System.out.println(jumunRepository.deleteJumunByNo(3));
		
	}

}
