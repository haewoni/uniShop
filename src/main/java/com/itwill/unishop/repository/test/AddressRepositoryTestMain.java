package com.itwill.unishop.repository.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.repository.AddressRepository;

public class AddressRepositoryTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		AddressRepository addressRepository = (AddressRepository) applicationContext.getBean("addressRepository");
		System.out.println(addressRepository.selectAll());
		
	}

}
