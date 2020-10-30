package com.itwill.unishop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Member;
import com.itwill.unishop.exception.MemberNotFoundException;
import com.itwill.unishop.exception.PasswordMismatchException;
import com.itwill.unishop.service.MemberService;

@Controller
public class JumunController {

	@Autowired
	private MemberService memberService;

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
	public String jumun_delivery_action_POST(Model model,HttpSession session, @ModelAttribute Member member) {
		String forwardPath = " ";
		session.setAttribute("loginMember", new Member("uni1", "2222", "t", "t","t", "t", "t", "t", "t", "t" ,"t"));
		Member loginMember = (Member)session.getAttribute("loginMember");
		memberService.updateMember(loginMember);
		forwardPath="jumun_payment_form";
		return forwardPath;
	}
	
	




}
