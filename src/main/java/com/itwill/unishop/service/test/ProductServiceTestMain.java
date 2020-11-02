package com.itwill.unishop.service.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.service.ProductService;

public class ProductServiceTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		ProductService productService = (ProductService) applicationContext.getBean("productServiceImpl");
		/*
		System.out.println("-----------------1. SELECT ALL----------------------");
		System.out.println(productService.selectAll());
		System.out.println("-----------------2. SELECT BY NO----------------------");
		System.out.println(productService.selectByNo("415693"));
		System.out.println("-----------------3. SELECT BY DIV L----------------------");
		System.out.println(productService.selectByDivL("F"));
		System.out.println("-----------------4. SELECT BY DIV LM----------------------");
		System.out.println(productService.selectByDivLM("F", "T"));
		System.out.println("-----------------5. SELECT BY DIV LMS----------------------");
		System.out.println(productService.selectByDivLMS("F", "T","SH"));
		System.out.println("-----------------6.INSERT ----------------------");
		Product product = new Product("12345", "TEST", "TEST", 1111, "F", "T", "SH", "12345_1.png", "12345_2.png", "12345_3.png", "12345_4.png", "12345_5.png");
		System.out.println(productService.insertProduct(product));
		System.out.println("-----------------7.DELETE ----------------------");
		System.out.println(productService.deleteProduct("12345"));
		*/
		System.out.println("-----------------8. SELECT Four----------------------");
		System.out.println(productService.selectFour("M"));
		System.out.println("----------------------------------------------------------------");
		
		System.out.println("-----------------8. SELECT Eight----------------------");
		System.out.println(productService.selectEight());
		System.out.println("----------------------------------------------------------------");
		
		System.out.println("-----------------8. SELECT Thirty----------------------");
		System.out.println(productService.selectThirty());

	}

}
