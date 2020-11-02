package com.itwill.unishop.repository;

import java.util.ArrayList;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.WishList;

public interface WishListRepository {

	public int insertWishList(WishList wishList) throws Exception;
	
	public ArrayList<WishList> selectWishListAll(String member_id) throws Exception;
	
	
	public int deleteWishListById(Integer wish_no) throws Exception;
	
	public int deleteWishListAll(String member_id) throws Exception;
	
	
	
}
