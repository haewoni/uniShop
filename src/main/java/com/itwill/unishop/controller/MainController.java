package com.itwill.unishop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Cart;
import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.Question;
import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.service.CartService;
import com.itwill.unishop.service.JumunService;
import com.itwill.unishop.service.ProductService;
import com.itwill.unishop.service.QuestionService;
import com.itwill.unishop.service.WishListService;

@Controller
public class MainController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private WishListService wishListService;
	
	@Autowired
	private JumunService jumunService; 
	
	@Autowired
	private QuestionService questionService;
	
	@Autowired
	private CartService cartService;
	
	
	
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
	
	
	
	
	/********************** wishList 추가하기 **********************/
	@RequestMapping("/add_wishlist_action")
	public String add_wishlist_action(Model model, HttpSession session, @RequestParam String product_no) {
		String forwardPath = "";
		String productNo = product_no;
		String sMemberId = (String) session.getAttribute("sMemberId");
			
		try {
			if(sMemberId == null || sMemberId == "") {
					forwardPath = "member_login_register_form";
			}
			wishListService.insertWishList(new WishList(-1, sMemberId, productNo, null));
			forwardPath = "redirect:unishop_main";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	
	
	
	
	/********************** ACCOUNT click 시  **********************/
		@RequestMapping(value = "/account_member_detail")
		public String account_member_detail(Model model, HttpSession session) {
			String forwardPath = "";
			String sMemberId = (String) session.getAttribute("sMemberId");
			try {
				if(sMemberId == null || sMemberId == "") {
					forwardPath = "member_login_register_form";
				}
	//				memberService.selectMemberById(member_id);
					ArrayList<Jumun> jumunList = (ArrayList<Jumun>) jumunService.selectById(sMemberId);
					ArrayList<WishList> wishList = wishListService.selectWishListAll(sMemberId);
					//Question question = questionService.selectByNo(question_no);
					ArrayList<Question> questionList = questionService.selectById(sMemberId);
					
					//ArrayList<Question> questionList = questionService
					//session.setAttribute("sMemberId", member_id);
					//model.addAttribute("question", question);
					model.addAttribute("jumunList", jumunList);
					model.addAttribute("wishList", wishList);
					model.addAttribute("questionList", questionList);
					forwardPath = "member_profile_form";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return forwardPath;
		}
	
	
	
	
		

		/********************** 장바구니 클릭시 해당 아이디의 카트 보기 **********************/
		@RequestMapping("/main_cart_list")
		public String main_cart_list(Model model, HttpSession session) {
			String forwardPath = "";
			try {
				String sMemberId = (String) session.getAttribute("sMemberId");
				if(sMemberId == null || sMemberId == "") {
					
					forwardPath = "member_login_register_form";
				}
				ArrayList<Cart> cartList = cartService.selectCartAll(sMemberId);
				model.addAttribute("cartList", cartList);
				
				forwardPath = "cart_list";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return forwardPath;
				
		}
		
		
	
	
	
	
	//모든 Exception을 던지면 이곳으로 날라온다
	/*
		@ExceptionHandler(Exception.class)
		public String member_error_handle(Exception e) {
			return "error_handle"; 
		}
	*/
	
	
	
}
