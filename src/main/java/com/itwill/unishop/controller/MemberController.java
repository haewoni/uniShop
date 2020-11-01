package com.itwill.unishop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Member;
import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.Question;
import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.exception.ExistedMemberException;
import com.itwill.unishop.exception.MemberNotFoundException;
import com.itwill.unishop.exception.PasswordMismatchException;
import com.itwill.unishop.service.JumunService;
import com.itwill.unishop.service.MemberService;
import com.itwill.unishop.service.ProductService;
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
	@Autowired
	private ProductService productService;
	@RequestMapping("/member_login_register_form")
	public String member_login_register_form() {
		return "member_login_register_form"; 
	}
	
	//멤버 로그인을 해보자 => 로그인 성공하면 메인으로, 실패하면 로그인_등록폼으로
	@RequestMapping(value = "/member_login_action", method = RequestMethod.GET)
	public String member_login_action_GET() {
		return "member_login_register_form"; 
	}
	@RequestMapping(value = "/member_login_action", method = RequestMethod.POST)
	public String member_login_action_POST(Model model,HttpSession session,@RequestParam String member_id, @RequestParam String member_password) {
		String forwardPath = "";
		try {
			Member loginMember=memberService.loginMember(member_id, member_password);
			
			session.setAttribute("loginMember",loginMember);//멤버의 객체반환
			session.setAttribute("sMemberId", member_id);//멤버의아이디 보여줌
			
			forwardPath = "redirect:unishop_main";
		} catch (PasswordMismatchException e) {
			model.addAttribute("msg2", e.getMessage());
			
			forwardPath = "member_login_register_form";
			e.printStackTrace();
		}catch(MemberNotFoundException e){
			model.addAttribute("msg1", e.getMessage());
			e.printStackTrace();
			forwardPath = "member_login_register_form";
		}catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	
	
	//회원가입을 해보자
	@RequestMapping(value="/member_register_action", method = RequestMethod.GET)
	public String member_register_action() {
		return "member_login_register_form";
		}
	
	//회원가입 성공 => 로그인_등록 폼으로 이동
	@RequestMapping(value="/member_register_action", method = RequestMethod.POST)
	public String member_register_action(Model model, @ModelAttribute Member newMember, @RequestParam String member_pass) {
		String forwardPath="";
		try {
			if(newMember.getMember_password().equalsIgnoreCase(member_pass)) {
				memberService.insertMember(newMember);
				forwardPath="redirect:member_login_register_form";
			}else {
				forwardPath="member_login_register_form";
			}
			
			
		} catch (ExistedMemberException e) {
			model.addAttribute("msg1", e.getMessage());
			System.out.println("아이디 확인좀요 ㅡㅡ");
			e.printStackTrace();
			forwardPath="member_login_register_form";
		} 
		
		return forwardPath;
	}
	//회원 디테일
	@RequestMapping(value = "/member_detail")
	public String member_detail(Model model, HttpSession session/*, @RequestParam String member_id*/) {
		String forwardPath = "";
		try {
			String sMemberId = (String) session.getAttribute("sMemberId");
//			memberService.selectMemberById(member_id);
			ArrayList<Jumun> jumunList = (ArrayList<Jumun>) jumunService.selectById(sMemberId);
			ArrayList<WishList> wishList = wishListService.selectWishListAll(sMemberId);
			ArrayList<Question> questionList = questionService.selectById(sMemberId);
			
			//ArrayList<Question> questionList = questionService
			//session.setAttribute("sMemberId", member_id);
			model.addAttribute("jumunList", jumunList);
			model.addAttribute("wishList", wishList);
			model.addAttribute("questionList", questionList);
			forwardPath = "member_detail";
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

		return "member_profile_update_action";
	}

	

	@RequestMapping(value = "/member_profile_update_action", method = RequestMethod.POST)
	public String member_profile_update_action_POST(Model model, HttpSession session, @ModelAttribute Member member) {
		String forwardPath = "";
		try {
			memberService.updateMember(member);
			session.setAttribute("loginMember", member);
			forwardPath = "redirect:unishop_main";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	/*
	//모든 Exception을 던지면 이곳으로 날라온다
	@ExceptionHandler(Exception.class)
	public String member_error_handle(Exception e) {
		return "error_handle";
	}
	*/


}
