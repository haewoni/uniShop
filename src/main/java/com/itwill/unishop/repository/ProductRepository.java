package com.itwill.unishop.repository;

import java.util.ArrayList;

import com.itwill.unishop.domain.Product;

public interface ProductRepository {
	
	
	public ArrayList<Product> selectAll();
	
	public ArrayList<Product> selectFour(String product_l_div);
	
	public ArrayList<Product> selectEight();
	
	public ArrayList<Product> selectThirty();
	
	public Product selectByNo(String product_no);
	
	public Product selectByName(String product_name);
	
	public ArrayList<Product> selectByDivL(String product_l_div);

	public ArrayList<Product> selectByDivLM(String product_l_div,String product_m_div);
	
	public ArrayList<Product> selectByDivLMS(String product_l_div,String product_m_div,String product_s_div);
	
	public int insertProduct(Product product);
	
	public int deleteProduct(String product_no);
	
	
}
