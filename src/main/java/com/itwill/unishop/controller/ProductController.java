package com.itwill.unishop.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.Review;
import com.itwill.unishop.service.ProductService;
import com.itwill.unishop.service.ReviewService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private ReviewService reviewService;
	
	/**********샵 메인***********/
	@RequestMapping("/shop_main")
	public String shop_main(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectThirty();
		model.addAttribute("productList", productList);
		forwardPath = "shop_main";
		return forwardPath;
	}
		
	/**********남성 아우터***********/
	@RequestMapping("/shop_male_outer_list")
	public String male_outer_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("M", "T", "OT");
		model.addAttribute("productList", productList);
		forwardPath = "shop_male_outer_list";
		return forwardPath;
	}
	
	/**********남성 가디건***********/
	@RequestMapping("/shop_male_cardigan_list")
	public String male_cardigan_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("M", "T", "KN");
		model.addAttribute("productList", productList);
		forwardPath = "shop_male_cardigan_list";
		return forwardPath;
	}
	
	/**********남성 티셔츠***********/
	@RequestMapping("/shop_male_tshirt_list")
	public String male_tshirt_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("M", "T", "SH");
		model.addAttribute("productList", productList);
		forwardPath = "shop_male_tshirt_list";
		return forwardPath;
	}
	
	/**********남성 긴바지***********/
	@RequestMapping("/shop_male_longpants_list")
	public String male_longpants_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("M", "B", "LP");
		model.addAttribute("productList", productList);
		forwardPath = "shop_male_longpants_list";
		return forwardPath;
	}
	
	/**********남성 반바지***********/
	@RequestMapping("/shop_male_shortpants_list")
	public String male_shortpants_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("M", "B", "SP");
		model.addAttribute("productList", productList);
		forwardPath = "shop_male_shortpants_list";
		return forwardPath;
	}
	
	/**********여성 아우터***********/
	@RequestMapping("/shop_female_outer_list")
	public String female_outer_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("F", "T", "OT");
		model.addAttribute("productList", productList);
		forwardPath = "shop_female_outer_list";
		return forwardPath;
	}
	
	/**********여성 가디건***********/
	@RequestMapping("/shop_female_cardigan_list")
	public String female_cardigan_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("F", "T", "KN");
		model.addAttribute("productList", productList);
		forwardPath = "shop_female_cardigan_list";
		return forwardPath;
	}
	
	/**********여성 티셔츠***********/
	@RequestMapping("/shop_female_tshirt_list")
	public String female_tshirt_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("F", "T", "SH");
		model.addAttribute("productList", productList);
		forwardPath = "shop_female_tshirt_list";
		return forwardPath;
	}
	
	/**********여성 긴바지***********/
	@RequestMapping("/shop_female_longpants_list")
	public String female_longpants_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("F", "B", "LP");
		model.addAttribute("productList", productList);
		forwardPath = "shop_female_longpants_list";
		return forwardPath;
	}
	
	/**********여성 스커트***********/
	@RequestMapping("/shop_female_skirt_list")
	public String female_skirt_list(Model model) throws Exception{
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectByDivLMS("F", "B", "SK");
		model.addAttribute("productList", productList);
		forwardPath = "shop_female_skirt_list";
		return forwardPath;
	}
	
	/**********제품 상세***********/
	@RequestMapping("/shop_product_detail")
	public String shop_product_detail(Model model, @RequestParam String product_no) throws Exception{
		String forwardPath = "";
		Product product = productService.selectByNo(product_no);
		model.addAttribute("product",product);
		forwardPath = "shop_product_detail";
		return forwardPath;
	}
		
	/**********제품 리뷰***********/
	@RequestMapping("/shop_product_review_list")
	public String shop_product_review(Model model, @RequestParam String product_no) {
		String forwardPath = "";
		try {
			ArrayList<Review> reviewList = reviewService.selectReviewByNo(product_no);
			model.addAttribute("reviewList", reviewList);
			forwardPath = "shop_product_review_list";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	/**********카트 추가***********/
	
	
	
	/**********추천 상품***********/
	
	
	
	/*
	 * 모든 Exception을 던지면 이곳으로 날라온다
	 
		@ExceptionHandler(Exception.class)
		public String member_error_handle(Exception e) {
			return "error_handle";
		}
	*/
	
	
	
}
