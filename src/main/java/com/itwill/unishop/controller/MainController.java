package com.itwill.unishop.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.Question;
import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.service.JumunService;
import com.itwill.unishop.service.ProductService;
import com.itwill.unishop.service.QuestionService;
import com.itwill.unishop.service.WishListService;

@Controller
public class MainController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private WishListService wishListService;
	
	@Autowired
	private JumunService jumunService;
	
	@Autowired
	private QuestionService questionService;
	
	
	
	/********************** main **********************/

	@RequestMapping("/unishop_main")
	public String unishop_main(Model model) {
		String forwardPath = "";
		ArrayList<Product> productList = productService.selectEight();
		model.addAttribute("productList", productList);
		forwardPath = "unishop_main";
		return forwardPath;

	}
	
	
	
	/********************** 남성아우터 **********************/
	@RequestMapping("/product_ManOuterList")
	public String product_ManOuterList() throws Exception{
		String forwardPath = "";
			forwardPath = "redirect:shop_male_outer_list";
		return forwardPath;
	}

	
	/********************** 남성 긴바지 **********************/
	@RequestMapping("/product_ManPantslist")
	public String product_M_B_list() throws Exception{
		String forwardPath = "";
			forwardPath = "redirect:shop_male_longpants_list";
		return forwardPath;
	}
	
	/********************** 여성 아우터 **********************/
	@RequestMapping("/product_FemaleOuter_list")
	public String product_F_T_list() throws Exception{
		String forwardPath = "";
			forwardPath = "redirect:shop_female_outer_list";
		return forwardPath;
	}
	
	/********************** 여성 스커트 **********************/
	@RequestMapping("/product_FemaleSkirt_list")
	public String product_F_B_list() throws Exception{
		String forwardPath = "";
			forwardPath = "redirect:shop_female_skirt_list";
		return forwardPath;
	}
	
	
	
	/********************** product selectAll **********************/
	@RequestMapping("/product_All_List")
	public String product_All_List(Model model) {
		String forwardPath = "";
			forwardPath = "redirect:shop_main";
		return forwardPath;	
	}
	
	
	
	@RequestMapping(value = "/add_wishList")
	public String add_wishList(Model model, HttpSession session, @RequestParam String product_no) throws Exception {
		String forwardPath = "";
		String productNo = product_no;
		
		String sMemberId = (String) session.getAttribute("sMemberId");
			
		if(sMemberId == null || sMemberId == "") {
				JOptionPane.showMessageDialog(null, "로그인 하세요");
				forwardPath = "member_login_register_form";
		}
		
		wishListService.insertWishList(new WishList(-8888, sMemberId, productNo, null));
		forwardPath = "redirect:shop_main:";
		return "forwardPath";
	}
	
	
	
	
	/********************** ACCOUNT click 시  **********************/
		@RequestMapping(value = "/account_member_detail")
		public String account_member_detail(Model model, HttpServletResponse response, HttpSession session/*, @RequestParam int question_no*//*, @RequestParam String member_id*/) {
			String forwardPath = "";
			try {
				String sMemberId = (String) session.getAttribute("sMemberId");
				if(sMemberId == null || sMemberId == "") {
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script>alert('로그인 하세요');</script>"); 
					out.flush();
					forwardPath = "member_login_register_form";
				}
//				memberService.selectMemberById(member_id);
				ArrayList<Jumun> jumunList = (ArrayList<Jumun>) jumunService.selectById(sMemberId);
				ArrayList<WishList> wishList = wishListService.selectWishListAll(sMemberId);
				//Question question = questionService.selectByNo(question_no);
				ArrayList<Question> questionList = questionService.selectById(sMemberId);
				
				//ArrayList<Question> questionList = questionService
				//session.setAttribute("sMemberId", member_id);
				//model.addAttribute("question", question);
				model.addAttribute("jumunList", jumunList);
				model.addAttribute("wishList", wishList);
				model.addAttribute("questionList", questionList);
				forwardPath = "member_detail";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return forwardPath;
		}
	
	
	
	
	
	
	
	
	//모든 Exception을 던지면 이곳으로 날라온다
	/*
		@ExceptionHandler(Exception.class)
		public String member_error_handle(Exception e) {
			return "error_handle"; 
		}
	*/
	
	
	
}
