package com.itwill.unishop.repository;

import java.io.InputStream;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.mapper.ProductMapper;

public class ProductRepositoryMyBatisMapperInterface implements ProductRepository {
	
	private SqlSessionFactory sqlSessionFactory;
	
	public ProductRepositoryMyBatisMapperInterface() {
		InputStream in=null;
		try {
			in=Resources.getResourceAsStream("application-config.xml");
			this.sqlSessionFactory = 
					new SqlSessionFactoryBuilder()
					.build(in);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public ArrayList<Product> selectAll() {
		ArrayList<Product> productList = new ArrayList<Product>();
		productList = (ArrayList<Product>) sqlSessionFactory.openSession(true)
										.getMapper(ProductMapper.class)
										.selectAll();
		return productList;
	}
	
	@Override
	public Product selectByNo(String product_no) {
		Product product = new Product();
		product = sqlSessionFactory.openSession(true)
								   .getMapper(ProductMapper.class)
								   .selectByNo(product_no);
		return product;
	}


	@Override
	public Product selectByName(String product_name) {
		Product product = new Product();
		product = sqlSessionFactory.openSession(true)
								   .getMapper(ProductMapper.class)
								   .selectByName(product_name);
		return product;
	}


	@Override
	public Product selectByDivL(String product_l_div) {
		Product product = new Product();
		product = sqlSessionFactory.openSession(true)
								   .getMapper(ProductMapper.class)
							       .selectByDivL(product_l_div);
		return product;
	}


	@Override
	public Product selectByDivLM(String product_l_div, String product_m_div) {
		Product product = new Product();
		product = sqlSessionFactory.openSession(true)
								   .getMapper(ProductMapper.class)
								   .selectByDivLM(product_l_div, product_m_div);
		return product;
	}


	@Override
	public Product selectByDivLMS(String product_l_div, String product_m_div, String product_s_div) {
		Product product = new Product();
		product = sqlSessionFactory.openSession(true)
								   .getMapper(ProductMapper.class)
								   .selectByDivLMS(product_l_div, product_m_div, product_s_div);
		return product;
	}


	@Override
	public int insertProduct(Product product) {
		int insertRowCount = 0;
		insertRowCount = sqlSessionFactory.openSession(true)
										  .getMapper(ProductMapper.class)
									      .insertProduct(product);
		return insertRowCount;
	}


	@Override
	public int deleteProduct(String product_no) {
		int deleteRowCount = 0;
		deleteRowCount = sqlSessionFactory.openSession(true)
										  .getMapper(ProductMapper.class)
									      .deleteProduct(product_no);
		return deleteRowCount;
	}


	
}
