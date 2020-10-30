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
	public String jumun_address_action_POST(Model model,HttpSession session) {
		session.setAttribute("loginMember", new Member("uni5", "1111", "tttt", "1111",
				"ttt@naver.com"));
		Member loginMember = (Member)session.getAttribute("loginMember");
		String forwardPath = "";
		memberService.updateMember(loginMember);
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
	public String jumun_delivery_action_POST(Model model,@ModelAttribute Member member) {
		String forwardPath = " ";
		memberService.updateMember(member);
		forwardPath="jumun_payment_form";
		return forwardPath;
	}
	
	




}
