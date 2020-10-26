package com.itwill.unishop.repository.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.repository.DeliveryRepository;

public class DeliveryRepositoryTestMain {

	public static void main(String[] args) throws Exception{
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		DeliveryRepository deliveryRepository = (DeliveryRepository) applicationContext.getBean("deliveryRepository");
		System.out.println(deliveryRepository.selectAll());
		//System.out.println(deliveryRepository.insertDelivery(new Delivery("tes","테스트","0~1일",7000)));
		//Delivery delivery = new Delivery("tes","변경","5~6일",7000);
		//System.out.println(deliveryRepository.updateDelivery(delivery));
		//System.out.println(deliveryRepository.deleteDelivery("tes"));
	}

}
