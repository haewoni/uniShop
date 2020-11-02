package com.itwill.unishop.repository.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.repository.ReviewRepository;
import com.itwill.unishop.repository.WishListRepository;
import com.itwill.unishop.repository.WishListRepositoryImpl;

public class WishListRepositoryTestMain {

	public static void main(String[] args) throws Exception {
		
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		WishListRepository wishListRepository = (WishListRepository)applicationContext.getBean("wishListRepository");
		
		System.out.println(wishListRepository.selectWishListAll("uni3"));
		//System.out.println(wishListRepository.selectWishListByNo("uni4"));
		
		//System.out.println(wishListRepository.insertWishList(new WishList(101, "uni3", "431464")));
		//System.out.println(wishListRepository.deleteWishListById(2));
	}

}
