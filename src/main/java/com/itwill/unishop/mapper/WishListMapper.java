package com.itwill.unishop.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.WishList;

public interface WishListMapper {

	public int insertWishList(WishList wishList);
	
	//public WishList selectWishListByNo(String no);
	
	public int inspectDuplicateWishList(@Param("member_id") String member_id, @Param("product_no")String product_no) throws Exception;
	
	public ArrayList<WishList> selectWishListAll(String member_id);
	
	public int deleteWishListById(@Param("member_id") String member_id, @Param("product_no")String product_no);
	
	public int deleteWishListAll(String member_id);
	
	
}
