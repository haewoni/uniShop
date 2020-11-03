package com.itwill.unishop.service;

import java.util.ArrayList;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.WishList;

public interface WishListService {

	
	
	public int insertWishList(WishList wishList) throws Exception;
	
	public ArrayList<WishList> selectWishListAll(String member_id) throws Exception;
	
	public int inspectDuplicateWishList(String member_id, String product_no) throws Exception;
	
	public int deleteWishListById(String member_id, String product_no) throws Exception;
	
	public int deleteWishListAll(String member_id) throws Exception;
}
