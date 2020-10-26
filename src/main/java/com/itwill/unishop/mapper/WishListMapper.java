package com.itwill.unishop.mapper;

import java.util.ArrayList;
import com.itwill.unishop.domain.WishList;

public interface WishListMapper {

	public int insertWishList(WishList wishList);
	
	public WishList selectWishListByNo(String no);
	
	public ArrayList<WishList> selectWishListAll();
	
	
	public int deleteWishListById(int no);
	
	
}
