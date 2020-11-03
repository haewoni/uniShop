package com.itwill.unishop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.unishop.domain.Cart;
import com.itwill.unishop.repository.CartRepository;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	private CartRepository cartRepository;
	
	/*
	 * 카트 추가
	 */
	@Override
	public int insertCart(Cart cart) {
		return cartRepository.insertCart(cart);
	}

	/*
	 * 로그인된 아이디의 카트 불러오기
	 */
	@Override
	public ArrayList<Cart> selectCartAll(String member_id) {
		return cartRepository.selectCartAll(member_id);
	}

	/*
	 * 카트 업데이트
	 */
	@Override
	public int updateCart(Cart UpdateCart) {
		return cartRepository.updateCart(UpdateCart);
	}

	/*
	 * 카트 하나 삭제
	 */
	@Override
	public int deleteCartByCartNo(int cart_no) {
		return cartRepository.deleteCartByCartNo(cart_no);
	}

	/*
	 * 로그인된 아이디의 카트 전체 삭제
	 */
	@Override
	public int deleteCartByMemberId(String member_id) {
		return cartRepository.deleteCartByMemberId(member_id);
	}
	
	/*
	 * 카트 중복검사
	 */
	@Override
	public int inspectDuplicateCart(String member_id, String product_no, String cart_product_size) {
		return cartRepository.inspectDuplicateCart(member_id, product_no, cart_product_size);
	}
	
	/*
	 * 카트 하나 검색
	 */
	@Override
	public Cart selectCartOne(String member_id, String product_no, String cart_product_size) {
		return cartRepository.selectCartOne(member_id, product_no, cart_product_size);
	}
	

}
