package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Cart;

public interface CartMapper {
	
	public List<Cart> selectAll(String member_id);
	
	public int insertCart(Cart cart);
	
	public int deleteCart(int cart_no);
	
	public int updateCart(Cart updateCart);
	
}
