package com.itwill.unishop.repository;

import java.util.ArrayList;
import java.util.List;

import com.itwill.unishop.domain.Cart;

public interface CartDao {

	public int insertCart(Cart cart) throws Exception;
	
	public ArrayList<Cart> selectAll(String member_id) throws Exception;
	
	public int updateCart(Cart UpdateCart) throws Exception;
	
	public int deleteCart(int cart_no) throws Exception;
}
