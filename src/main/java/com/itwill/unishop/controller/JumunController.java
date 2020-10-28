package com.itwill.unishop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
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
	@RequestMapping("/address_form")
	public String address_form() {
		return "address_form"; 
	}
	@RequestMapping(value = "/jumun_address_action", method = RequestMethod.GET)
	public String jumun_address_action_GET() {
		return "address_form"; 
	}
	@RequestMapping(value = "/jumun_address_action", method = RequestMethod.POST)
	public String jumun_address_action_POST(HttpServletRequest request,@RequestParam String member_id, @RequestParam String member_password) {
		String forwardPath = "delivery_form";
	
		return forwardPath;
	}
	/*
	 * jumun - delivery
	 */
	@RequestMapping("/delivery_form")
	public String delivery_form() {
		return "delivery_form"; 
	}
	@RequestMapping(value = "/jumun_delivery_action", method = RequestMethod.GET)
	public String jumun_delivery_action_GET() {
		return "delivery_form"; 
	}
	@RequestMapping(value = "/jumun_delivery_action", method = RequestMethod.POST)
	public String jumun_delivery_action_POST(HttpServletRequest request,@RequestParam String member_id, @RequestParam String member_password) {
		String forwardPath = "payment_form";
		
		return forwardPath;
	}
	
	



	//모든 Exception을 던지면 이곳으로 날라온다
	@ExceptionHandler(Exception.class)
	public String member_error_handle(Exception e) {
		return "404.html"; //예시입니다. 후에 .html은 뺄거예요
	}



}
