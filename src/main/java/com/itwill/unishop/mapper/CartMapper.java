package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Cart;

public interface CartMapper {
	
	public List<Cart> selectCartAll(String member_id);
	
	public int insertCart(Cart cart);
	
	public int deleteCartByCartNo(int cart_no);
	
	public int deleteCartByMemberId(String member_id);
	
	public int updateCart(Cart updateCart);
	
}
