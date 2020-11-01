package com.itwill.unishop.service.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.service.WishListService;

public class WishListServiceTestMain {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		WishListService wishListService = (WishListService)applicationContext.getBean("wishListServiceImpl");
		
		//System.out.println(wishListService.selectWishListAll("uni4"));
				
		System.out.println(wishListService.insertWishList(new WishList(3, "uni4", "431464")));
		
		//System.out.println(wishListService.deleteWishListById(101));
		
//		System.out.println(wishListService.deleteWishListAll("uni3"));


	}

}
