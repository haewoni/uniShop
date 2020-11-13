package com.itwill.unishop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.unishop.domain.Cart;
import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.domain.Member;
import com.itwill.unishop.domain.Product;
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

	/**************** 멤버 주문 리스트 *******************/
	@RequestMapping(value = "rest_jumun_detail")
	public List<Jumun_Detail> jumun_detail(@RequestParam int jumun_no) throws Exception {
		return jumun_DetailService.selectByNo(jumun_no);
	}

	@RequestMapping(value = "rest_jumun_delivery_detail")
	public Delivery jumun_delivery_detail(@RequestParam String delivery_no) throws Exception {
		return deliveryService.selectByNo(delivery_no);
	}

	/********** 제품 리뷰 ***********/
	@RequestMapping("/rest_shop_product_review_list")
	public List<Review> shop_product_review(@RequestParam String product_no) throws Exception {

		List<Review> reviewList = reviewService.selectReviewByNo(product_no);

		return reviewList;
	}

	/*************************************
	 * 리뷰를 남겨보자
	 ***************************************/
	@RequestMapping(value = "/rest_shop_product_review_action", method = RequestMethod.GET)
	public String shop_product_review_action_GET() {
		return "shop_product_review_list";
	}

	@RequestMapping(value = "/rest_shop_product_review_action", method = RequestMethod.POST)
	public String shop_product_review_action_POST(@ModelAttribute Review insertReview, @RequestParam String product_no,
			HttpSession session) throws Exception {
		String forwardPath = "";
		String sMemberId = (String) session.getAttribute("sMemberId");
		if (sMemberId == null || sMemberId == "") {
			forwardPath = "member_login_register_form";
		}
		Product product = productService.selectByNo(product_no);
		if (sMemberId.equals(insertReview.getMember_id()) && product.getProduct_no().equals(product_no)) {
			reviewService.insertReview(insertReview);
		}
		forwardPath = "redirect:shop_product_review_list";
		return forwardPath;
	}

	@RequestMapping(value = "rest_shop_add_cart_action")
	public String shop_add_cart(Model model, HttpSession session, @RequestParam int cart_qty,
			@RequestParam String cart_product_size, @RequestParam String product_no) {

		String msg = "";
		String sMemberId = (String) session.getAttribute("sMemberId");

		try {

			if (sMemberId == null || sMemberId == "") {
				msg = "false";
			}
			int duplicateCount = cartService.inspectDuplicateCart(sMemberId, product_no, cart_product_size);
			if (duplicateCount != 0) {
				int update_qty = cartService.selectCartOne(sMemberId, product_no, cart_product_size).getCart_qty()
						+ cart_qty;
				int cart_no = cartService.selectCartOne(sMemberId, product_no, cart_product_size).getCart_no();
				Cart updateCart = new Cart(cart_no, update_qty, 5000, cart_product_size, sMemberId, product_no);
				cartService.updateCart(updateCart);
			} else {
				Cart cart = new Cart(-9999, cart_qty, 5000, cart_product_size, sMemberId, product_no);
				cartService.insertCart(cart);
			}
			msg = "true";
			// -1과 5000은 임의의 수일 뿐. 쿼리문상 자동으로 계산된 값으로 입력됨
		} catch (Exception e) {
			e.printStackTrace();
			msg = "false";
		}
		return msg;
	}

	/*************** 체크아웃-주소폼 *****************/
	@RequestMapping("/rest_jumun_address_form")
	public Member jumun_address_form(HttpSession session) {
		String sMemberId = (String) session.getAttribute("sMemberId");
		return memberService.selectMemberById(sMemberId);
	}

	/*************** 체크아웃-주소폼 액션 *****************/
	@RequestMapping(value = "/rest_jumun_address_action", method = RequestMethod.POST)
	public String jumun_address_action_POST(HttpSession session, @ModelAttribute Member member) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		loginMember.setMember_id(loginMember.getMember_id());
		loginMember.setMember_name(member.getMember_name());
		loginMember.setMember_phone(member.getMember_phone());
		loginMember.setMember_address_name(member.getMember_address_name());
		loginMember.setMember_address_country(member.getMember_address_country());
		loginMember.setMember_address_city(member.getMember_address_city());
		loginMember.setMember_address_zipcode(member.getMember_address_zipcode());
		loginMember.setMember_address1(member.getMember_address1());
		loginMember.setMember_address2(member.getMember_address2());
		session.setAttribute("loginMember", loginMember);
		memberService.updateAddress(loginMember);
		return "true";
	}

	/*************** 체크아웃-배송 폼 *****************/
	@RequestMapping(value = "rest_jumun_delivery_form", method = RequestMethod.POST)
	public String jumun_delivery_form() {
		return "true";
	}
	
	/*************** 체크아웃-배송 폼 액션 *****************/
	@RequestMapping(value = "/rest_jumun_delivery_action", method = RequestMethod.POST)
	   public String jumun_delivery_action_POST(HttpSession session, @RequestParam String deliveryStr) {
	      Jumun createJumun = new Jumun();
	      if(deliveryStr.equalsIgnoreCase("일반")) {
	         createJumun.setDelivery_no("GEN");
	         session.setAttribute("delivery_fee", 3000);
	      }else {
	         createJumun.setDelivery_no("EX");
	         session.setAttribute("delivery_fee", 6000);
	      }
	      session.setAttribute("createJumun", createJumun);
	      return "true";
	   }

}
