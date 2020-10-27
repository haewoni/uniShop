package com.itwill.unishop.service.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.repository.CartRepository;
import com.itwill.unishop.service.DeliveryService;
import com.itwill.unishop.service.DeliveryServiceImpl;

public class DeliveryServiceTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		DeliveryService deliveryService = (DeliveryService) applicationContext.getBean("deliveryServiceImpl");
		System.out.println(deliveryService);
	}

}
