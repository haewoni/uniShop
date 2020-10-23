package com.itwill.unishop.repository.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.repository.DeliveryRepository;

public class DeliveryRepositoryTestMain {

	public static void main(String[] args) throws Exception{
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		DeliveryRepository deliveryRepository = (DeliveryRepository) applicationContext.getBean("deliveryRepository");
		System.out.println(deliveryRepository.selectAll());
	}

}
