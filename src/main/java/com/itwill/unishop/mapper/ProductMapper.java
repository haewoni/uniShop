package com.itwill.unishop.mapper;

import java.util.ArrayList;
import java.util.List;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.Question;

public interface ProductMapper {
	
public ArrayList<Product> selectAll();
	
	public Product selectByNo(String product_no);
	
	public Product selectByName(String product_name);
	
	public Product selectByDivL(String product_l_div);

	public Product selectByDivLM(String product_l_div,String product_m_div);
	
	public Product selectByDivLMS(String product_l_div,String product_m_div,String product_s_div);
	
	public int insertProduct(Product product);
	
	public int deleteProduct(String product_no);

}
