package com.itwill.unishop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.Question;
import com.itwill.unishop.domain.Review;
import com.itwill.unishop.service.CartService;
import com.itwill.unishop.service.DeliveryService;
import com.itwill.unishop.service.JumunService;
import com.itwill.unishop.service.Jumun_DetailService;
import com.itwill.unishop.service.MemberService;
import com.itwill.unishop.service.ProductService;
import com.itwill.unishop.service.QuestionService;
import com.itwill.unishop.service.ReviewService;
import com.itwill.unishop.service.WishListService;

@RestController
public class UnishopRestController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private ProductService productService;
	@Autowired
	private JumunService jumunService;
	@Autowired
	private Jumun_DetailService jumun_DetailService;
	@Autowired
	private CartService cartService;
	@Autowired
	private QuestionService questionService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private WishListService wishListService;
	@Autowired
	private DeliveryService deliveryService;
	
	@RequestMapping(value = "rest_jumun_detail")
	public List<Jumun_Detail> jumun_detail(@RequestParam int jumun_no) throws Exception{
		return jumun_DetailService.selectByNo(jumun_no);
	}
	@RequestMapping(value = "rest_jumun_delivery_detail")
	public Delivery jumun_delivery_detail(@RequestParam String delivery_no) throws Exception{
		return deliveryService.selectByNo(delivery_no);
	}
	
	/**********제품 리뷰***********/
	@RequestMapping("/rest_shop_product_review_list")
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
	/*************************************리뷰를 남겨보자***************************************/
	@RequestMapping(value = "/rest_shop_product_review_action",method = RequestMethod.GET)
	public String shop_product_review_action_GET(){
		return "shop_product_review_list";
	}
	@RequestMapping(value = "/rest_shop_product_review_action",method = RequestMethod.POST)
	public String shop_product_review_action_POST(@ModelAttribute Review insertReview, @RequestParam String product_no,HttpSession session){
		String forwardPath = "";
		System.out.println("dsjkpfdsjfsj");
		try {
			String sMemberId = (String) session.getAttribute("sMemberId");
			if(sMemberId == null || sMemberId == "") {
				forwardPath = "member_login_register_form";
			}	
			Product product = productService.selectByNo(product_no);
//			if(sMemberId.equals(insertReview.getMember_id()) && product.getProduct_no().equals(product_no)) {
//			}
			reviewService.insertReview(insertReview);
			forwardPath = "redirect:shop_product_review_list";
			
		} catch (Exception e) {
			//forwardPath="error_handle";
			e.printStackTrace();
		}
		return forwardPath;
	}

}
