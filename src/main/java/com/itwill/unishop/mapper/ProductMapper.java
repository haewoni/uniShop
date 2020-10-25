package com.itwill.unishop.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.itwill.unishop.domain.Product;

public interface ProductMapper {
	
	public ArrayList<Product> selectAll();
	
	public Product selectByNo(String product_no);
	
	public Product selectByName(String product_name);
	
	public ArrayList<Product> selectByDivL(String product_l_div);

	public ArrayList<Product> selectByDivLM(@Param("product_L_div") String product_L_div,@Param("product_M_div")String product_M_div);
	
	public ArrayList<Product> selectByDivLMS(@Param("product_L_div") String product_L_div,@Param("product_M_div")String product_M_div,@Param("product_S_div")String product_S_div);
	
	public int insertProduct(Product product);
	
	public int deleteProduct(String product_no);

}
