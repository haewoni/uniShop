package com.itwill.unishop.mapper;

import java.util.ArrayList;
import com.itwill.unishop.domain.WishList;

public interface WishListMapper {

	public int insertWishList(WishList wishList);
	
	//public WishList selectWishListByNo(String no);
	
	public ArrayList<WishList> selectWishListAll(String member_id);
	
	public int deleteWishListById(Integer no);
	
	public int deleteWishListAll(String member_id);
	
	
}
