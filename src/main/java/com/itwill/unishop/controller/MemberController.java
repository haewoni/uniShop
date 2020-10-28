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
import com.itwill.unishop.service.JumunService;
import com.itwill.unishop.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private JumunService jumunService;
	
	@RequestMapping("/member_login_insert_form")
	public String member_login_form() {
		return "member_login_insert_form"; 
	}

	@RequestMapping(value = "/member_login_action", method = RequestMethod.GET)
	public String member_login_Action_GET() {
		return "member_login_insert_form"; 
	}
	@RequestMapping(value = "/member_login_action", method = RequestMethod.POST)
	public String member_login_action_POST(HttpServletRequest request,@RequestParam String member_id, @RequestParam String member_password) {
		String forwardPath = "";
		try {
			HttpSession session = request.getSession();
			Member loginMember=memberService.loginMember(member_id, member_password);
			session.setAttribute("sUser", loginMember);
			session.setAttribute("sUserId", member_id);
			forwardPath = "redirect:main";
		} catch (PasswordMismatchException e) {
			
			e.printStackTrace();
		}catch(MemberNotFoundException e){
			
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	public String member_profile(@RequestParam String member_id) {
		
		return "";
	}



	//모든 Exception을 던지면 이곳으로 날라온다
	@ExceptionHandler(Exception.class)
	public String member_error_handle(Exception e) {
		return "error_handle";
	}



}
