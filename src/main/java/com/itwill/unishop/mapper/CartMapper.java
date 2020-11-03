package com.itwill.unishop.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwill.unishop.domain.Cart;

public interface CartMapper {
	
	public List<Cart> selectCartAll(String member_id);
	
	public int insertCart(Cart cart);
	
	public int inspectDuplicateCart (@Param("member_id") String member_id, @Param("product_no")String product_no, @Param("cart_product_size")String cart_product_size);
	
	public Cart selectCartOne (@Param("member_id") String member_id, @Param("product_no")String product_no, @Param("cart_product_size")String cart_product_size);
	
	public int deleteCartByCartNo(int cart_no);
	
	public int deleteCartByMemberId(String member_id);
	
	public int updateCart(Cart updateCart);
	
	
	public ArrayList<Cart> cartAll();
	
}
