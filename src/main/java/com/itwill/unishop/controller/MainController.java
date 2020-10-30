package com.itwill.unishop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.service.ProductService;

@Controller
public class MainController {
	@Autowired
	private ProductService productService;
	
	
	
	
	/********************** main **********************/

	@RequestMapping("/unishop_main")
	public String unishop_main() {
		return "unishop_main";

	}
	
	
	
	
	/********************** 남성상의 **********************/
	@RequestMapping("/maleTopProduct_list")
	public String maleTopProduct_list(Model model) throws Exception{
		String forwardPath = "";
			List<Product> productList = productService.selectByDivLM("M","T");
			model.addAttribute("productList", productList);
			forwardPath = "maleTopProduct_list";
		return forwardPath;
	}

	
	/********************** 남성하의 **********************/
	@RequestMapping("/maleBottomProduct_list")
	public String maleBottomProduct_list(Model model) throws Exception{
		String forwardPath = "";
		List<Product> productList = productService.selectByDivLM("M","B");
		model.addAttribute("productList", productList);
		forwardPath = "maleBottomProduct_list";
		return forwardPath;
	}
	
	/********************** 여성상의 **********************/
	@RequestMapping("/femaleTopProduct_list")
	public String femaleTopProduct_list(Model model) throws Exception{
		String forwardPath = "";
			List<Product> productList = productService.selectByDivLM("F","T");
			model.addAttribute("productList", productList);
			forwardPath = "femaleTopProduct_list";
		return forwardPath;
	}
	
	/********************** 남성하의 **********************/
	@RequestMapping("/femaleBottomProduct_list")
	public String femaleBottomProduct_list(Model model) throws Exception{
		String forwardPath = "";
		List<Product> productList = productService.selectByDivLM("F","B");
		model.addAttribute("productList", productList);
		forwardPath = "femaleBottomProduct_list";
		return forwardPath;
	}
	
	
	
	
	
	
	
	
	//모든 Exception을 던지면 이곳으로 날라온다
		@ExceptionHandler(Exception.class)
		public String member_error_handle(Exception e) {
			return "error_handle.jsp"; 
		}
	
	
	
	
}
