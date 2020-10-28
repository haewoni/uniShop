package com.itwill.unishop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.unishop.service.ProductService;

@Controller
public class MainController {
	@Autowired
	private ProductService productService;
	
	
	
	
	/********************** main **********************/
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
	
	
	
	
}
