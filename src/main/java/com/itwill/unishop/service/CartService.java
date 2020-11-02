package com.itwill.unishop.service;

import java.util.ArrayList;

import com.itwill.unishop.domain.Cart;

public interface CartService {
	
	/*
	 * 카트 추가
	 */
	public int insertCart(Cart cart);
	
	/*
	 * 로그인된 아이디의 카트 불러오기
	 */
	public ArrayList<Cart> selectCartAll(String member_id);
	
	/*
	 * 카트 업데이트
	 */
	public int updateCart(Cart UpdateCart);
	
	/*
	 * 카트 하나 삭제
	 */
	public int deleteCartByCartNo(int cart_no);
	
	/*
	 * 로그인된 아이디의 카트 전체 삭제
	 */
	public int deleteCartByMemberId(String member_id);
	

}
