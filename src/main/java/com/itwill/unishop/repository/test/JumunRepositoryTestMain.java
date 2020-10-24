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
		Jumun jumun = new Jumun(-9999, new Date(), "waiting", 77777, "1111 2222 3333 7777", "07/07", "333", "정솬", "uni5", "GE");
		System.out.println(jumunRepository.insertJumun(jumun));
		
		
		/********************** select **********************/
//		System.out.println(jumunRepository.selectById("uni1"));
//		System.out.println();
//		System.out.println(jumunRepository.selectById("uni2"));
//		System.out.println();
//		System.out.println(jumunRepository.selectById("uni3"));
//		System.out.println();
//		System.out.println(jumunRepository.selectById("uni4"));
//		System.out.println();
//		
//		System.out.println(jumunRepository.selectAll());
		
		/********************** update **********************/
//		Jumun jumun1 = new Jumun(4, new Date(), "waiting", 987654, "1111 2222 3333 8888", "01/26", "222", "수환잉", "uni4", "EX");
//		System.out.println(jumunRepository.updateJumun(jumun1));
		
		
		/********************** delete **********************/
//		System.out.println(jumunRepository.deleteJumunByNo(1));
		
	}

}
