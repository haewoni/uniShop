package com.itwill.unishop.repository;

import java.io.InputStream;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.mapper.ProductMapper;
import com.sun.org.apache.bcel.internal.generic.StackProducer;
@Repository("productRepository")
public class ProductRepositoryImpl implements ProductRepository {
	@Autowired
	private ProductMapper productMapper;

	
	@Override
	public ArrayList<Product> selectAll() {
		ArrayList<Product> productList = new ArrayList<Product>();
		productList = productMapper.selectAll();
		return productList;
	}
	
	@Override
	public Product selectByNo(String product_no) {
		Product product = new Product();
		product = productMapper.selectByNo(product_no);
		return product;
	}


	@Override
	public Product selectByName(String product_name) {
		Product product = new Product();
		product = productMapper.selectByName(product_name);
		return product;
	}


	@Override
	public ArrayList<Product> selectByDivL(String product_l_div) {
		ArrayList<Product> product = new ArrayList<Product>();
		product = productMapper.selectByDivL(product_l_div);
		return product;
	}


	@Override
	public ArrayList<Product> selectByDivLM(String product_l_div, String product_m_div) {
		ArrayList<Product> product = new ArrayList<Product>();
		product = productMapper.selectByDivLM(product_l_div, product_m_div);
		return product;
	}


	@Override
	public ArrayList<Product> selectByDivLMS(String product_l_div, String product_m_div, String product_s_div) {
		ArrayList<Product> product = new ArrayList<Product>();
		product = productMapper.selectByDivLMS(product_l_div, product_m_div, product_s_div);
		return product;
	}


	@Override
	public int insertProduct(Product product) {
		int insertRowCount = 0;
		insertRowCount = productMapper.insertProduct(product);
		return insertRowCount;
	}


	@Override
	public int deleteProduct(String product_no) {
		int deleteRowCount = 0;
		deleteRowCount = productMapper.deleteProduct(product_no);
		return deleteRowCount;
	}


	
}
