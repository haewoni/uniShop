package com.itwill.unishop.service.test;

import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.service.DeliveryServiceImpl;

public class DeliveryServiceTestMain {

	public static void main(String[] args) {
		DeliveryServiceImpl deliveryServiceImpl = new DeliveryServiceImpl();
		
		System.out.println(deliveryServiceImpl.insertDelivery(new Delivery("TEST","테스트","0~1일",7000)));
		Delivery delivery = new Delivery("TEST","수정테스트","2~3일",5000);
		System.out.println(deliveryServiceImpl.updateDelivery(delivery));
		System.out.println(deliveryServiceImpl.selectByNo("TEST"));
		System.out.println(deliveryServiceImpl.selectAll());
		System.out.println(deliveryServiceImpl.deleteDelivery("TEST"));
	}

}
