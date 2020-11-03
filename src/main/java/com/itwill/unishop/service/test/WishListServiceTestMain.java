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
				

		//System.out.println(wishListService.insertWishList(new WishList(6, "uni3", "425415", null)));

		//System.out.println(wishListService.insertWishList(new WishList(4, "uni3", "425415", null)));

		
		System.out.println(wishListService.deleteWishListById("uni4", "429290"));
		
		//System.out.println(wishListService.deleteWishListAll("uni3"));

		//System.out.println(wishListService.inspectDuplicateWishList("uni1","428855"));
	}

}
