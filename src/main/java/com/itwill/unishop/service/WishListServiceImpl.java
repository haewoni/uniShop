package com.itwill.unishop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.repository.WishListRepository;
@Service
public class WishListServiceImpl implements WishListService{
	@Autowired
	private WishListRepository wishListRepository;
	
	@Override
	public int insertWishList(WishList wishList) throws Exception {
		int insertCount = 0;
		
		insertCount = wishListRepository.insertWishList(wishList);
		return insertCount;
	};
	
	@Override
	public int inspectDuplicateWishList(String member_id, String product_no) throws Exception {
		int duplicateCount = 0;
		duplicateCount = wishListRepository.inspectDuplicateWishList(member_id, product_no);
		return duplicateCount;
	}
	
	@Override
	public ArrayList<WishList> selectWishListAll(String member_id) throws Exception {
		ArrayList<WishList> wishList = (ArrayList<WishList>)wishListRepository.selectWishListAll(member_id);
		return wishList;
	};

	@Override
	public int deleteWishListById(String member_id, String product_no) throws Exception {
		int deleteCount = wishListRepository.deleteWishListById(member_id, product_no);
		return deleteCount;
	};
	
	public int deleteWishListAll(String member_id) throws Exception{
		return wishListRepository.deleteWishListAll(member_id);
	}

	
	
	
}
