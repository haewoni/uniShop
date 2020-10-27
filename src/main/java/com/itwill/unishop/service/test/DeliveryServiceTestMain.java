package com.itwill.unishop.service.test;

import org.springframework.context.ApplicationContext;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Delivery;

import com.itwill.unishop.service.DeliveryService;
import com.itwill.unishop.service.DeliveryServiceImpl;

public class DeliveryServiceTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		DeliveryService deliveryService = (DeliveryService) applicationContext.getBean("deliveryServiceImpl");
		
		System.out.println(deliveryService.insertDelivery(new Delivery("TEST","테스트","0~1일",7000)));
		Delivery delivery = new Delivery("TEST","수정","2~3일",5000);
		System.out.println(deliveryService.updateDelivery(delivery));
		System.out.println(deliveryService.selectByNo("TEST"));
		System.out.println(deliveryService.selectAll());
		System.out.println(deliveryService.deleteDelivery("TEST"));


	}

}
