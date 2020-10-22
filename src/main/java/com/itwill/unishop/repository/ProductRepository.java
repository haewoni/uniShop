package com.itwill.unishop.repository;

import java.util.ArrayList;

import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.domain.Product;

public interface ProductRepository {
	
	public ArrayList<Product> selectAll();
	
	public Product selectByNo(String product_no);
	
	public Product selectByName(String product_name);
	
	public Product selectByDivL(String product_l_div);

	public Product selectByDivLM(String product_l_div,String product_m_div);
	
	public Product selectByDivLMS(String product_l_div,String product_m_div,String product_s_div);
	
	public int insertProduct(Product product);
	
	public int deleteProduct(String product_no);
	
	
}
