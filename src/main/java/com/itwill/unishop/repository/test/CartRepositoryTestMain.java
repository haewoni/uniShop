package com.itwill.unishop.repository.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Cart;
import com.itwill.unishop.repository.CartRepository;
import com.itwill.unishop.repository.MemberRepository;

public class CartRepositoryTestMain {

	public static void main(String[] args) throws Exception{
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		CartRepository cartRepository = (CartRepository) applicationContext.getBean("cartRepository");
		System.out.println(cartRepository.selectCartAll("uni1"));
		//Cart insertCart = new Cart(-1,4,5000,"M","BLUE","uni3","431464");
		//System.out.println(cartRepository.insertCart(insertCart));
		//Cart updateCart = new Cart(6,16,5000,"M","BLUE","uni1","431464");
		//System.out.println(cartRepository.updateCart(updateCart));
		//System.out.println(cartRepository.deleteCartByCartNo(6));
		//System.out.println(cartRepository.deleteCartByMemberId("uni3"));
	}

}
