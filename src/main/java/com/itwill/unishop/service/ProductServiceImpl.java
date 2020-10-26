package com.itwill.unishop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductRepository productRepository;
	/*
	 * 모든 제품 찾기 select
	 */
	@Override
	public ArrayList<Product> selectAll() {
		return productRepository.selectAll();
	}
	/*
	 * 제품번호로 찾기 
	 */
	@Override
	public Product selectByNo(String product_no) {
		return productRepository.selectByNo(product_no);
	}
	/*
	 * 제품명으로 찾기
	 */
	@Override
	public Product selectByName(String product_name) {
		return productRepository.selectByName(product_name);
	}
	/*
	 * 대분류(여/남)로 제품 찾기
	 */
	@Override
	public ArrayList<Product> selectByDivL(String product_l_div) {
		return productRepository.selectByDivL(product_l_div);
	}
	/*
	 * 중분류로(상의/하의) 제품 찾기
	 */
	@Override
	public ArrayList<Product> selectByDivLM(String product_l_div, String product_m_div) {
		return productRepository.selectByDivLM(product_l_div, product_m_div);
	}
	/*
	 * 소분류(티셔츠/니트/셔츠/치마/반바지/긴바지로 제품 찾기
	 */
	@Override
	public ArrayList<Product> selectByDivLMS(String product_l_div, String product_m_div, String product_s_div) {
		return productRepository.selectByDivLMS(product_l_div, product_m_div, product_s_div);
	}
	/*
	 * 제품 등록 INSERT
	 */
	@Override
	public int insertProduct(Product product) {
		return productRepository.insertProduct(product);
	}
	/*
	 * 제품 삭제 DELETE
	 */
	@Override
	public int deleteProduct(String product_no) {
		return productRepository.deleteProduct(product_no);
	}
}