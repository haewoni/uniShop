package com.itwill.unishop.service;

import java.util.ArrayList;

import com.itwill.unishop.domain.Product;

public interface ProductService {
	/*
	 * 모든 제품 찾기 select
	 */
	public ArrayList<Product> selectAll();
	/*
	 * 제품번호로 찾기 
	 */
	public Product selectByNo(String product_no);
	/*
	 * 제품명으로 찾기
	 */
	public Product selectByName(String product_name);
	/*
	 * 대분류(여/남)로 제품 찾기
	 */
	public ArrayList<Product> selectByDivL(String product_l_div);
	/*
	 * 중분류로(상의/하의) 제품 찾기
	 */
	public ArrayList<Product> selectByDivLM(String product_l_div,String product_m_div);
	/*
	 * 소분류(티셔츠/니트/셔츠/치마/반바지/긴바지로 제품 찾기
	 */
	public ArrayList<Product> selectByDivLMS(String product_l_div,String product_m_div,String product_s_div);
	/*
	 * 제품 등록 INSERT
	 */
	public int insertProduct(Product product);
	/*
	 * 제품 삭제 DELETE
	 */
	public int deleteProduct(String product_no);
}
