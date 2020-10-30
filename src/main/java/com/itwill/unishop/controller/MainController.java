package com.itwill.unishop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	@RequestMapping("/product_M_T_list")
	public String product_M_T_list(Model model) throws Exception{
		String forwardPath = "";
			List<Product> productList = productService.selectByDivLM("M","T");
			model.addAttribute("productList", productList);
			forwardPath = "product_M_T_list";
		return forwardPath;
	}

	
	/********************** 남성하의 **********************/
	@RequestMapping("/product_M_B_list")
	public String product_M_B_list(Model model) throws Exception{
		String forwardPath = "";
			List<Product> productList = productService.selectByDivLM("M","B");
			model.addAttribute("productList", productList);
			forwardPath = "product_M_B_list";
		return forwardPath;
	}
	
	/********************** 여성상의 **********************/
	@RequestMapping("/product_F_T_list")
	public String product_F_T_list(Model model) throws Exception{
		String forwardPath = "";
			List<Product> productList = productService.selectByDivLM("F","T");
			model.addAttribute("productList", productList);
			forwardPath = "product_F_T_list";
		return forwardPath;
	}
	
	/********************** 여성하의 **********************/
	@RequestMapping("/product_F_B_list")
	public String product_F_B_list(Model model) throws Exception{
		String forwardPath = "";
			List<Product> productList = productService.selectByDivLM("F","B");
			model.addAttribute("productList", productList);
			forwardPath = "product_F_B_list";
		return forwardPath;
	}
	
	
	
	
	
	@RequestMapping("/product_view")
	public String product_view(Model model, @RequestParam String product_name) {
		String forwardPath = "";
			Product product = productService.selectByName(product_name);
			model.addAttribute("product", product);
			forwardPath = "product_view";
		return forwardPath;		//	forward:/WEB-INF/views/guest_list.jsp 와 같다
	}
	
	
	
	
	
	
	
	//모든 Exception을 던지면 이곳으로 날라온다
	/*
		@ExceptionHandler(Exception.class)
		public String member_error_handle(Exception e) {
			return "error_handle"; 
		}
	*/
	
	
	
}
