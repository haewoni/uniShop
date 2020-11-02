package com.itwill.unishop.controller;


import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Member;
import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.Review;
import com.itwill.unishop.service.DeliveryService;
import com.itwill.unishop.service.JumunService;
import com.itwill.unishop.service.MemberService;
import com.itwill.unishop.service.ReviewService;

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
	public String jumun_address_form() {
		return "jumun_address_form"; 
	}
	@RequestMapping(value = "/jumun_address_action", method = RequestMethod.GET)
	public String jumun_address_action_GET() {
		return "redirect:jumun_address_form"; 
	}
	@RequestMapping(value = "/jumun_address_action", method = RequestMethod.POST)
	public String jumun_address_action_POST(Model model,HttpSession session,@ModelAttribute Member member) {
		String forwardPath = "";
		session.setAttribute("loginMember", new Member("uni1", "2222", "t564", "ta","ta", member.getMember_address_name(), member.getMember_address_country(), member.getMember_address_city(), member.getMember_address_zipcode(),member.getMember_address1() ,member.getMember_address2()));
		Member loginMember = (Member)session.getAttribute("loginMember");
		memberService.updateAddress(loginMember);
		forwardPath="jumun_delivery_form";
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
	public String jumun_delivery_action_POST(Model model,HttpSession session) {
		String forwardPath = "";
		String deliveryStr = "EX";
		session.setAttribute("deliveryStr", deliveryStr);
		forwardPath="jumun_payment_form";
		return forwardPath;
	}
	/*
	 * jumun - payment
	 */
	@RequestMapping("jumun_payment_form")
	public String payment_form(HttpSession session) {
		String aaa = (String)session.getAttribute("delivertStr");
		System.out.println(aaa);
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
		Jumun jumun2=new Jumun();
		jumun2.setCard_no(jumun.getCard_no());
		jumun2.setCard_expire_date(jumun.getCard_expire_date());
		jumun2.setCard_cvc(jumun.getCard_cvc());
		jumun2.setCard_member_name(jumun.getCard_member_name());
		jumun2.setMember_id(jumun.getMember_id());
		String forwardPath = " ";
		forwardPath="jumun_review_form";
		//System.out.println(jumun2);
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
