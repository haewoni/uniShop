package com.itwill.unishop.repository;

import java.util.ArrayList;
import com.itwill.unishop.domain.WishList;

public interface WishListRepository {

	public int insertWishList(WishList wishList) throws Exception;
	
	public WishList selectWishListByNo(int no) throws Exception ;
	
	public ArrayList<WishList> selectWishListAll() throws Exception;
	
	public int updateWishListById(WishList wishList) throws Exception;
	
	public int deleteWishListById(int no) throws Exception;
	
	
	
}
