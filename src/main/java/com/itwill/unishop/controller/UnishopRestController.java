package com.itwill.unishop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.domain.Member;
import com.itwill.unishop.domain.Question;
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

	@RequestMapping(value = "jumun_detail")
	public List<Jumun_Detail> jumun_detail(@RequestParam int jumun_no) throws Exception {
		return jumun_DetailService.selectByNo(jumun_no);
	}

	@RequestMapping(value = "jumun_delivery_detail")
	public Delivery jumun_delivery_detail(@RequestParam String delivery_no) throws Exception {
		return deliveryService.selectByNo(delivery_no);
	}

	@RequestMapping(value = "question_insert_action")
	public int question_insert_action(Question question) {
		return questionService.insertQuestion(question);
	}
	/*************** 체크아웃-주소폼 *****************/
	@RequestMapping("/rest_jumun_address_form")
	public Member jumun_address_form(HttpSession session) {
		String sMemberId = (String)session.getAttribute("sMemberId");
		return memberService.selectMemberById(sMemberId);
	}
	/*************** 체크아웃-주소폼 액션 - GET *****************/
	@RequestMapping(value = "/rest_jumun_address_action", method = RequestMethod.GET)
	public void jumun_address_action_GET() {
	}
	/*************** 체크아웃-주소폼 액션 - POST *****************/
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
	@RequestMapping(value = "rest_jumun_delivery_form",
					method = RequestMethod.POST)
	public String jumun_delivery_form() {
		return "true";
	}

}
