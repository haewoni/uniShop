package com.itwill.unishop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Cart;
import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.Review;
import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.service.CartService;
import com.itwill.unishop.service.ProductService;
import com.itwill.unishop.service.ReviewService;
import com.itwill.unishop.service.WishListService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private CartService cartService;
	@Autowired
	private WishListService wishListService;

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
	public String shop_product_detail_kyj(Model model, HttpSession session, @RequestParam String product_no) throws Exception{
		String forwardPath = "";
		String sMemberId = (String) session.getAttribute("sMemberId");
		Product product = productService.selectByNo(product_no);
		ArrayList<Product> recommendedProductList = productService.selectFour(product.getProduct_L_div());
		model.addAttribute("sMemberId",sMemberId);
		model.addAttribute("product",product);
		model.addAttribute("recommendedProductList",recommendedProductList);
		forwardPath = "shop_product_detail";
		return forwardPath;
	}
	

	/**********카트 추가***********/
	@RequestMapping(value = "/shop_add_cart_action")
	public String shop_add_cart(Model model, HttpSession session, @RequestParam int cart_qty,
			                                                      @RequestParam String cart_product_size, 
			                                                      @RequestParam String product_no) {
		String forwardPath= "";
		String sMemberId = (String) session.getAttribute("sMemberId");

		try {	
			if(sMemberId == null || sMemberId == "") {
				forwardPath = "member_login_register_form";
			}	
			
			int duplicateCount = cartService.inspectDuplicateCart(sMemberId, product_no, cart_product_size);

			//카트 중복검사 후 qty만 더하기
			if(duplicateCount!=0) {
				int update_qty = cartService.selectCartOne(sMemberId, product_no, cart_product_size).getCart_qty()+cart_qty;
				int cart_no = cartService.selectCartOne(sMemberId, product_no, cart_product_size).getCart_no();
				Cart updateCart = new Cart(cart_no, update_qty, 5000, cart_product_size, sMemberId, product_no);
				cartService.updateCart(updateCart);
			}else {
				Cart cart = new Cart(-9999, cart_qty, 5000, cart_product_size, sMemberId, product_no);
				cartService.insertCart(cart);
			}
			forwardPath = "redirect:shop_product_detail?product_no="+product_no;
			//-1과 5000은 임의의 수일 뿐. 쿼리문상 자동으로 계산된 값으로 입력됨
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	
	/**********위시리스트 추가**********
	@RequestMapping(value= "/shop_add_wishlist_action")
	public String shop_add_wishlist_action(Model model, HttpSession session, @RequestParam String product_no) {
		String forwardPath = "";
		try {
			String sMemberId = (String) session.getAttribute("sMemberId");
			int duplicateCount = wishListService.inspectDuplicateWishList(sMemberId, product_no);
	 			if(duplicateCount==0) {
					int insert_wishlist = wishListService.insertWishList(new WishList(-1, sMemberId, product_no, null));
				}
	 			forwardPath="redirect:member_wishlist_detail?member_id="+sMemberId;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}*/


	/*
	 * 모든 Exception을 던지면 이곳으로 날라온다

		@ExceptionHandler(Exception.class)
		public String member_error_handle(Exception e) {
			return "error_handle";
		}
	 */



}
