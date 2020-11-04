package com.itwill.unishop.controller;


import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Cart;
import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Member;
import com.itwill.unishop.service.CartService;
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
	@Autowired
	private CartService cartService;

	String member_id = "uni1";

	/*
	 * jumun - address
	 */
	@RequestMapping("/jumun_address_form")
	public String jumun_address_form(Model model,HttpSession session) {
		String sMemberId = (String) session.getAttribute("sMemberId");
		List<Cart> cartList = (List<Cart>) session.getAttribute("cartList");
		int cart_subtotal = 0;
//		DecimalFormat df=new DecimalFormat("#,##0");
		for (Cart cart : cartList) {
			cart_subtotal+=cart.getCart_tot_price();
		}
//        String cart_subtotal1 = df.format(cart_subtotal);
		model.addAttribute("cart_subtotal", cart_subtotal);
		model.addAttribute("loginMember", memberService.selectMemberById(sMemberId));
		session.setAttribute("cart_subtotal",cart_subtotal);
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
			session.setAttribute("delivery fee", 3000);
		}else {
			jumun1.setDelivery_no("EX");
			session.setAttribute("delivery_fee", 6000);
		}
		session.setAttribute("jumun1", jumun1);
		forwardPath="redirect:jumun_payment_form";
		return forwardPath;
	}
	/*
	 * jumun - payment
	 */
	@RequestMapping("jumun_payment_form")
	public String payment_form(HttpSession session) {
		session.getAttribute("delivery_fee");
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
//		Jumun jumun2=new Jumun();
		
		jumun1.setCard_no(jumun.getCard_no());
		jumun1.setCard_expire_date(jumun.getCard_expire_date());
		jumun1.setCard_cvc(jumun.getCard_cvc());
		jumun1.setCard_member_name(jumun.getCard_member_name());
		jumun1.setMember_id(jumun.getMember_id());
		String forwardPath = " ";
		forwardPath="redirect:jumun_review_form";
//		System.out.println(jumun1);
		//System.out.println(jumun1);
		//System.out.println("1");
		return forwardPath;
	}
	/*
	 * jumun - review
	 */
	@RequestMapping("jumun_review_form")
	public String review_form(HttpSession session) {
		session.getAttribute("loginMember");
		//System.out.println("1");
		return "jumun_review_form"; 
	}
	@RequestMapping(value = "/jumun_review_action", method = RequestMethod.GET)
	public String jumun_review_action_GET(Model model,HttpSession session,@ModelAttribute Jumun jumun) {
		String forwardPath = " ";
		Member member2=new Member("uni1", "2222", "t564", "ta","ta", "집", "한국", "서울특별시", "01234", "강남구" ,"서초구");
		Jumun jumun2=new Jumun(1234, new Date(), "15126", 51551,"1121 1231 1213 4562", "12/21", "255", "민주영", "uni1","EX");
		Cart cart2=new Cart(1,1,1,"M","uni1","1");
		ArrayList<Cart> cartList = cartService.selectCartAll(member_id);
		//ArrayList<Cart> cartList = cartService.selectCartAll(member_id);
//		session.setAttribute("member_name",member2.getMember_name());
//		session.setAttribute("member_address1",member2.getMember_address1());
//		session.setAttribute("member_phone",member2.getMember_phone());
//		session.setAttribute("card_no",jumun2.getCard_no());
		session.setAttribute("member_id", member_id);
		session.setAttribute("cartList", cartList);
//		//Member member = memberService.selectAddressById(member_id);
//		//model.addAttribute("jumun",jumun);
		jumunService.insertJumun(jumun2);
		System.out.println("1");
		forwardPath="jumun_complete_form";
		return forwardPath;
	}

		
	/*
	 * jumun - complete
	 */
	@RequestMapping("jumun_complete_form")
	public String complete_form() {
		return "jumun_complete_form"; 
	}

	
	
}
