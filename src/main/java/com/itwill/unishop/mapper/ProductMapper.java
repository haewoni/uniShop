package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Product;

public interface ProductMapper {
	
	public List<Product> selectAll();
	
	public Product selectByNo(String product_no);
	
	public Product selectByName(String product_name);
	
	public Product selectByDivL(String product_l_div);

	public Product selectByDivLM(String product_l_div,String product_m_div);
	
	public Product selectByDivLMS(String product_l_div,String product_m_div,String product_s_div);
	
	public int insertProduct(Product product);
	
	public int deleteProduct(String product_no);

}
