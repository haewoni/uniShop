package com.itwill.unishop.mapper;

import java.util.ArrayList;
import com.itwill.unishop.domain.WishList;

public interface WishListMapper {

	public int insertWishList(WishList wishList);
	
	public WishList selectWishListByNo(int no);
	
	public ArrayList<WishList> selectWishListAll();
	
	public int updateWishListById(WishList wishList);
	
	public int deleteWishListById(int no);
	
	
}
