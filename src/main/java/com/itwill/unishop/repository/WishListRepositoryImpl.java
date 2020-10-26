package com.itwill.unishop.repository;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.mapper.WishListMapper;
@Repository("wishListRepository")
public class WishListRepositoryImpl implements WishListRepository{

	@Autowired
	private WishListMapper wishListMapper;
	
	@Override
	public int insertWishList(WishList wishList) throws Exception {
		
		int insertCount = 0;
		insertCount = wishListMapper.insertWishList(wishList);
		return insertCount;
	};
	@Override
	public WishList selectWishListByNo(String no) throws Exception {
		
		WishList wishListOne = wishListMapper.selectWishListByNo(no);
		return wishListOne;
	};
	@Override
	public ArrayList<WishList> selectWishListAll() throws Exception {
		
		ArrayList<WishList> wishList = (ArrayList<WishList>)wishListMapper.selectWishListAll();
		return wishList;
	};

	@Override
	public int deleteWishListById(int no) throws Exception {
		
		int deleteCount = wishListMapper.deleteWishListById(no);
		return deleteCount;
	};
}
