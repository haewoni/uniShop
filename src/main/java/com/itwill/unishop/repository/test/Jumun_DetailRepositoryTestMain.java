package com.itwill.unishop.repository.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.repository.Jumun_DetailRepository;

public class Jumun_DetailRepositoryTestMain {

	public static void main(String[] args) throws Exception{
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		Jumun_DetailRepository jumun_DetailRepository = (Jumun_DetailRepository) applicationContext.getBean("jumun_DetailRepositoryImpl");
		
		
		
		/********************** insert **********************/
//		Jumun_Detail jumun_Detail = new Jumun_Detail(-9999, "test", "2XL", 158000, "2", 3, "429179");
//		System.out.println(jumun_DetailRepository.insertJumunDetail(jumun_Detail));

				
		
		
		
		
		
		/********************** select **********************/
//		System.out.println(jumun_DetailRepository.selectAll());	
//		System.out.println();
//		System.out.println(jumun_DetailRepository.selectByNo(1)); // jumun_no가 1번인 것을 찾는다
//		System.out.println();
		
		
		/********************** update **********************/
//		Jumun_Detail jumun_Detail = new Jumun_Detail(-9999, "Overr", "XL", 99000, "1", 3, "425213");
//		System.out.println(jumun_DetailRepository.updateJumunDetail(jumun_Detail));
//		 jumun_no 가 3번이면서 product_no가 425213 둘 다 충족하는것을 찾아 제품명,사이즈,가격,수량 을 update 합니다.
		
		
		/********************** delete **********************/
//		System.out.println(jumun_DetailRepository.deleteJumunDetail(1));
		// jumun_d_no 1번을 찾아 지운다.
		
		
	}

}
