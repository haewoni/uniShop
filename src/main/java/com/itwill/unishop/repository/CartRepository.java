package com.itwill.unishop.repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwill.unishop.domain.Cart;

public interface CartRepository {

	public int insertCart(Cart cart);
	
	public ArrayList<Cart> selectCartAll(String member_id);
	
	public int inspectDuplicateCart(String member_id, String product_no, String cart_product_size);
	
	public Cart selectCartOne (String member_id, String product_no, String cart_product_size);
	
	public int updateCart(Cart UpdateCart);
	
	public int deleteCartByCartNo(int cart_no);
	
	public int deleteCartByMemberId(String member_id);
	

}
