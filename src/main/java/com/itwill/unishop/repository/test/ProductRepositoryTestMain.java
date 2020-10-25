package com.itwill.unishop.repository.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.repository.ProductRepository;


public class ProductRepositoryTestMain {
	

	public static void main(String[] args) {
		
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		
		ProductRepository productRepository = (ProductRepository) applicationContext.getBean("productRepository");
		
		System.out.println("-----------------1. SELECT ALL----------------------");
		System.out.println(productRepository.selectAll());
		System.out.println("-----------------2. SELECT BY NO----------------------");
		System.out.println(productRepository.selectByNo("415693"));
		System.out.println("-----------------3. SELECT BY DIV L----------------------");
		System.out.println(productRepository.selectByDivL("F"));
		System.out.println("-----------------4. SELECT BY DIV LM----------------------");
		System.out.println(productRepository.selectByDivLM("F", "T"));
		System.out.println("-----------------5. SELECT BY DIV LMS----------------------");
		System.out.println(productRepository.selectByDivLMS("F", "T","SH"));
		System.out.println("-----------------6.INSERT ----------------------");
		Product product = new Product("12345", "TEST", "TEST", 1111, "F", "T", "SH", "12345_1.png", "12345_2.png", "12345_3.png", "12345_4.png", "12345_5.png");
		System.out.println(productRepository.insertProduct(product));
		System.out.println("-----------------7.DELETE ----------------------");
		System.out.println(productRepository.deleteProduct("12345"));
	
		
		
		
		
		
		
	}

}
