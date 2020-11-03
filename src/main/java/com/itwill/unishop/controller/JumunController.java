package com.itwill.unishop.controller;


import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Cart;
import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Member;
import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.Review;
import com.itwill.unishop.service.DeliveryService;
import com.itwill.unishop.service.JumunService;
import com.itwill.unishop.service.MemberService;
import com.itwill.unishop.service.ReviewService;

import jdk.internal.org.objectweb.asm.tree.JumpInsnNode;

@Controller
public class JumunController { 

	@Autowired
	private MemberService memberService;
	@Autowired
	private JumunService jumunService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private DeliveryService deliveryService;
	

	/*
	 * jumun - address
	 */
	@RequestMapping("/jumun_address_form")
	public String jumun_address_form(Model model,HttpSession session) {
		Cart cart1 = new Cart(1, 2, 56000, "s", "uni1","sa");
		Delivery delivery = new Delivery("EX", "특급", "tt", 5000);
		session.setAttribute("cart_tot_price",cart1.getCart_tot_price());
		session.setAttribute("delivery_fee",delivery.getDelivery_fee());
		return "jumun_address_form"; 
	}
	@RequestMapping(value = "/jumun_address_action", method = RequestMethod.GET)
	public String jumun_address_action_GET() {
		return "redirect:jumun_address_form"; 
	}
	@RequestMapping(value = "/jumun_address_action", method = RequestMethod.POST)
	public String jumun_address_action_POST(HttpSession session,@ModelAttribute Member member) {
		String forwardPath = "";
		session.setAttribute("loginMember", new Member("uni1", "3333",member.getMember_name(), member.getMember_phone(),"ta", member.getMember_address_name(), member.getMember_address_country(), member.getMember_address_city(), member.getMember_address_zipcode(),member.getMember_address1() ,member.getMember_address2()));
		Member loginMember = (Member)session.getAttribute("loginMember");
		memberService.updateMember(loginMember);
		forwardPath="redirect:jumun_delivery_form";
		return forwardPath;
	}
	/*
	 * jumun - delivery
	 */
	@RequestMapping("jumun_delivery_form")
	public String jumun_delivery_form() {
		return "jumun_delivery_form"; 
	}
	
	@RequestMapping(value = "/jumun_delivery_action", method = RequestMethod.GET)
	public String jumun_delivery_action_GET() {
		return "jumun_delivery_form"; 
	}
	
	@RequestMapping(value = "/jumun_delivery_action", method = RequestMethod.POST)
	public String jumun_delivery_action_POST(HttpSession session, @RequestParam String deliveryStr) {
		String forwardPath = "";
		Jumun jumun1 = new Jumun();
		if(deliveryStr=="일반") {
			jumun1.setDelivery_no("GEN");
		}else {
			jumun1.setDelivery_no("EX");
		}
		session.setAttribute("jumun1", jumun1);
		forwardPath="redirect:jumun_payment_form";
		return forwardPath;
	}
	/*
	 * jumun - payment
	 */
	@RequestMapping("jumun_payment_form")
	public String payment_form() {
		return "jumun_payment_form";
	}
	@RequestMapping(value = "/jumun_payment_action", method = RequestMethod.GET)
	public String jumun_payment_action_GET() {
		return "redirect:jumun_payment_form"; 
	}
	@RequestMapping(value = "/jumun_payment_action", method = RequestMethod.POST)
	public String jumun_payment_action_POST(Model model,HttpSession session, @ModelAttribute Jumun jumun) {
		//Member loginMember = (Member)session.getAttribute("loginMember");
		//session.setAttribute("loginMember", new Member("uni4", "1111", "tttt", "1111","ttt@naver.com"));
		Jumun jumun1 = (Jumun)session.getAttribute("jumun1");
		jumun1.setCard_no(jumun.getCard_no());
		jumun1.setCard_expire_date(jumun.getCard_expire_date());
		jumun1.setCard_cvc(jumun.getCard_cvc());
		jumun1.setCard_member_name(jumun.getCard_member_name());
		jumun1.setMember_id(jumun.getMember_id());
		String forwardPath = " ";
		forwardPath="jumun_review_form";
//		System.out.println(jumun1);
		return forwardPath;
	}
	/*
	 * jumun - review
	 */
	@RequestMapping("jumun_review_form")
	public String review_form() {
		return "jumun_review_form"; 
	}
	@RequestMapping(value = "/jumun_review_action", method = RequestMethod.GET)
	public String jumun_review_action_GET() {
		return "redirect:jumun_review_form"; 
	}
	@RequestMapping(value = "/jumun_review_action", method = RequestMethod.POST)
	public String jumun_review_action_POST(Model model,@ModelAttribute Review review) throws Exception {
		String forwardPath = " ";
		//Member member = memberService.selectAddressById(member_id);
		//model.addAttribute("member",member);
		reviewService.insertReview(review);
		forwardPath="jumun_review_form";
		return forwardPath;
	}
	/*
	 * jumun - complete
	 */
	@RequestMapping("/complete_form")
	public String complete_form() {
		return "jumun_complete_form"; 
	}

	
	
}
