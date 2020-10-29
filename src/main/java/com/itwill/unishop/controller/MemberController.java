package com.itwill.unishop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Member;
import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.exception.ExistedMemberException;
import com.itwill.unishop.exception.MemberNotFoundException;
import com.itwill.unishop.exception.PasswordMismatchException;
import com.itwill.unishop.service.JumunService;
import com.itwill.unishop.service.MemberService;
import com.itwill.unishop.service.QuestionService;
import com.itwill.unishop.service.WishListService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private JumunService jumunService;
	@Autowired
	private WishListService wishListService;
	@Autowired
	private QuestionService questionService;
	
	@RequestMapping("/member_login_register_form")
	public String member_login_register_form() {
		return "member_login_register_form"; 
	}
	
	//멤버 로그인을 해보자
	@RequestMapping(value = "/member_login_action", method = RequestMethod.GET)
	public String member_login_action_GET() {
		return "member_login_register_form"; 
	}
	@RequestMapping(value = "/member_login_action", method = RequestMethod.POST)
	public String member_login_action_POST(Model model,@RequestParam String member_id, @RequestParam String member_password) {
		String forwardPath = "";
		try {
			Member loginMember=memberService.loginMember(member_id, member_password);
			model.addAttribute("loginMember",loginMember);
			model.addAttribute("sUserId", member_id);
			forwardPath = "redirect:unishop_main";
		} catch (PasswordMismatchException e) {
			model.addAttribute("msg2", e.getMessage());
			
			forwardPath = "member_login_register_form";
			e.printStackTrace();
		}catch(MemberNotFoundException e){
			model.addAttribute("msg1", e.getMessage());
			e.printStackTrace();
			forwardPath = "member_login_register_form";
		}
		return forwardPath;
	}
	
	//회원가입을 해보자
	@RequestMapping(value="/member_register_action", method = RequestMethod.GET)
	public String member_register_action() {
		return "member_login_register_form";
		}
	
	
	@RequestMapping(value="/member_register_action", method = RequestMethod.POST)
	public String member_register_action(Model model,@RequestParam String member_id, @RequestParam String member_password,@RequestParam String member_name,@RequestParam String member_email,
			@RequestParam String member_phone,@RequestParam String member_pass) {
		String forwardPath="";
		Member newMember = new Member(member_id,member_password,member_name,member_email,member_phone,null,null,null,null,null,null);
		try {
			memberService.insertMember(newMember);
			if(newMember.getMember_password().equalsIgnoreCase(member_pass)) {
				System.out.println("회원가입 완료");
				//model.addAttribute();
				forwardPath="redirect:member_login_register_form";
			}
			
		} catch (ExistedMemberException e) {
			model.addAttribute("msg1", e.getMessage());
			System.out.println("아이디 확인좀요 ㅡㅡ");
			e.printStackTrace();
			forwardPath="member_login_register_form";
		}
		
		return forwardPath;
	}
	
	
	@RequestMapping(value = "/member_profile_update_form")
	public String member_profile_update_form(Model model, @ModelAttribute String member_id) {
		String forwardPath = "";
		try {
			Member memberProfile = memberService.selectMemberById(member_id);
			model.addAttribute(memberProfile);
			forwardPath = "member_profile";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}

	@RequestMapping(value = "/member_profile")
	public String member_profile(@RequestParam String member_id) {
		return null;
	}

	@RequestMapping(value = "/member_profile_update_action", method = RequestMethod.GET)
	public String member_profile_update_action_GET() {

		return "member_profile";
	}

	

	@RequestMapping(value = "/member_profile_update_action", method = RequestMethod.POST)
	public String member_profile_update_action_POST(Model model, @ModelAttribute Member member) {
		String forwardPath = "";
		try {
			int updateMember = memberService.updateMember(member);
			model.addAttribute("updateMember", updateMember);
			forwardPath = "redirect:main";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}


	//모든 Exception을 던지면 이곳으로 날라온다
	@ExceptionHandler(Exception.class)
	public String member_error_handle(Exception e) {
		return "error_handle";
	}



}
