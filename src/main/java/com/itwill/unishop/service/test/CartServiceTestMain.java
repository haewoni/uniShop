package com.itwill.unishop.service.test;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Cart;
import com.itwill.unishop.service.CartService;

public class CartServiceTestMain {

	public static void main(String[] args) {

		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		CartService cartService = (CartService) applicationContext.getBean("cartServiceImpl");
		
		
		/*
		 * 카트 추가
		 */
		System.out.println("-----------------1. insertCart----------------------");
		//Cart insertCart = new Cart(-1,4,5000,"M","uni3","431464");
		//System.out.println(cartService.insertCart(insertCart));
		
		/*
		 * 로그인된 아이디의 카트 불러오기
		 */
		System.out.println("-----------------2. selectCartAll----------------------");
		System.out.println(cartService.selectCartAll("uni1"));
		//System.out.println(cartService.cartAll());
		/*
		 * 카트 업데이트
		 */
		System.out.println("-----------------3. updateCart----------------------");
		//Cart updateCart = new Cart(7,16,5000,"M","uni3","431464");
		//System.out.println(cartService.updateCart(updateCart));
		/*
		 * 카트 하나 삭제
		 */
		System.out.println("-----------------4. deleteCartByCartNo----------------------");
		//System.out.println(cartService.deleteCartByCartNo(6));
		
		/*
		 * 로그인된 아이디의 카트 전체 삭제
		 */
		System.out.println("-----------------5. deleteCartByMemberId----------------------");
		//System.out.println(cartService.deleteCartByMemberId("uni3"));
		
		/*
		 * 카트 중복검사
		 */
		System.out.println("-----------------6. inspectDuplicateCart----------------------");
		//System.out.println(cartService.inspectDuplicateCart("uni1", "429284", "M"));
		
		/*
		 * 카트 하나 검색
		 */
		System.out.println("-----------------7. inspectDuplicateCart----------------------");
		//System.out.println(cartService.selectCartOne("uni1", "429284", "M"));
					
	}

}
