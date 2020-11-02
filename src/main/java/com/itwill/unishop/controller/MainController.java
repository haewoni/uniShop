package com.itwill.unishop.controller;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.service.ProductService;
import com.itwill.unishop.service.WishListService;

@Controller
public class MainController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private WishListService wishListService;
	
	
	
	
	/********************** main **********************/

	@RequestMapping("/unishop_main")
	public String unishop_main(Model model) {
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectEight();
		model.addAttribute("productList", productList);
		forwardPath = "unishop_main";
		return forwardPath;

	}
	
	
	
	/********************** 남성아우터 **********************/
	@RequestMapping("/product_ManOuterList")
	public String product_ManOuterList() throws Exception{
		String forwardPath = "";
			forwardPath = "redirect:shop_male_outer_list";
		return forwardPath;
	}

	
	/********************** 남성 긴바지 **********************/
	@RequestMapping("/product_ManPantslist")
	public String product_M_B_list() throws Exception{
		String forwardPath = "";
			forwardPath = "redirect:shop_male_longpants_list";
		return forwardPath;
	}
	
	/********************** 여성 아우터 **********************/
	@RequestMapping("/product_FemaleOuter_list")
	public String product_F_T_list() throws Exception{
		String forwardPath = "";
			forwardPath = "redirect:shop_female_outer_list";
		return forwardPath;
	}
	
	/********************** 여성 스커트 **********************/
	@RequestMapping("/product_FemaleSkirt_list")
	public String product_F_B_list() throws Exception{
		String forwardPath = "";
			forwardPath = "redirect:shop_female_skirt_list";
		return forwardPath;
	}
	
	
	
	/********************** product selectAll **********************/
	@RequestMapping("/product_All_List")
	public String product_All_List(Model model) {
		String forwardPath = "";
			forwardPath = "redirect:shop_main";
		return forwardPath;	
	}
	
	
	
	@RequestMapping(value = "/product_wishList")
	public void product_wishList(Model model, @RequestParam WishList wishList) throws Exception {
		wishListService.insertWishList(wishList);
	}
	
	
	
	
	
	
	//모든 Exception을 던지면 이곳으로 날라온다
	/*
		@ExceptionHandler(Exception.class)
		public String member_error_handle(Exception e) {
			return "error_handle"; 
		}
	*/
	
	
	
}
