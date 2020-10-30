package com.itwill.unishop.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/shop_grid_main")
	public String shop_grid_main(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectAll();
		model.addAttribute("prpductList", productList);
		forwardPath = "shop_gird_main";
		return forwardPath;
	}
		
	/**********남성 아우터***********/
	public String male_outer_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("M", "T", "OT");
		model.addAttribute("productList", productList);
		forwardPath = "shop_male_outer_list";
		return forwardPath;
	}
	
	/**********남성 가디건***********/
	public String male_cardigan_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("M", "T", "KN");
		model.addAttribute("productList", productList);
		forwardPath = "shop_male_cardigan_list";
		return forwardPath;
	}
	
	/**********남성 티셔츠***********/
	public String male_tshirt_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("M", "T", "SH");
		model.addAttribute("productList", productList);
		forwardPath = "shop_male_tshirt_list";
		return forwardPath;
	}
	
	/**********남성 긴바지***********/
	public String male_longpants_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("M", "B", "LP");
		model.addAttribute("productList", productList);
		forwardPath = "shop_male_longpants_list";
		return forwardPath;
	}
	
	/**********남성 반바지***********/
	public String male_shortpants_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("M", "B", "SP");
		model.addAttribute("productList", productList);
		forwardPath = "shop_male_shortpants_list";
		return forwardPath;
	}
	
	/**********여성 아우터***********/
	public String female_outer_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("F", "T", "OT");
		model.addAttribute("productList", productList);
		forwardPath = "shop_female_outer_list";
		return forwardPath;
	}
	
	/**********여성 가디건***********/
	public String female_cardigan_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("F", "T", "KN");
		model.addAttribute("productList", productList);
		forwardPath = "shop_female_cardigan_list";
		return forwardPath;
	}
	
	/**********여성 티셔츠***********/
	public String female_tshirt_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("F", "T", "SH");
		model.addAttribute("productList", productList);
		forwardPath = "shop_female_tshirt_list";
		return forwardPath;
	}
	
	/**********여성 긴바지***********/
	public String female_longpants_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("F", "B", "LP");
		model.addAttribute("productList", productList);
		forwardPath = "shop_female_longpants_list";
		return forwardPath;
	}
	
	/**********여성 스커트***********/
	public String female_skirt_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("F", "B", "SK");
		model.addAttribute("productList", productList);
		forwardPath = "shop_female_skirt_list";
		return forwardPath;
	}
	
	/**********제품 상세***********/
	
	
	/**********제품 상세***********/
	
	
	/**********제품 리뷰***********/
	
	
	//모든 Exception을 던지면 이곳으로 날라온다
		@ExceptionHandler(Exception.class)
		public String member_error_handle(Exception e) {
			return "error_handle";
		}
	
	
	
	
}
