package com.itwill.unishop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.domain.Question;
import com.itwill.unishop.service.MemberService;
import com.itwill.unishop.service.QuestionService;

@Controller
public class QuestionController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private QuestionService questionService;
	
	//멤버의 질문리스트
	@RequestMapping("/member_question_list")
	public String member_question_list(Model model, HttpSession session/*, @RequestParam int question_no*/) {
		String forwardPath = "";
		try {
			String sMemberId = (String) session.getAttribute("sMemberId");
			ArrayList<Question> questionList = questionService.selectById(sMemberId);
			model.addAttribute("questionList", questionList);
			forwardPath = "member_question_list";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
	//멤버의 질문 상세
	@RequestMapping("/member_question_detail")
	public String member_question_detail(Model model, HttpSession session, @RequestParam int question_no) {
		String forwardPath = "";
		try {
			String sMemberId = (String) session.getAttribute("sMemberId");
			Question question = questionService.selectByNo(question_no);
			model.addAttribute("question", question);
			forwardPath = "member_question_detail";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
	//멤버 질문하기
	@RequestMapping("/member_question_form")
	public String member_question_form(HttpSession session) {
		String sMemberId = (String) session.getAttribute("sMemberId");
		return "member_question_form";
	}
	@RequestMapping(value = "/member_question_action", method = RequestMethod.GET)
	public String member_question_action_GET() {

		return "member_question_form";
	}
	@RequestMapping(value = "/member_question_action", method = RequestMethod.POST)
	public String member_question_action_POST(HttpSession session, @ModelAttribute Question newQuestion) {
		String forwardPath = "";
		String sMemberId  = (String) session.getAttribute("sMemberId");
		System.out.println(newQuestion);
		questionService.insertQuestion(newQuestion);
		forwardPath = "redirect:member_question_list";

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
