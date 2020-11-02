package com.itwill.unishop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itwill.unishop.domain.Cart;
import com.itwill.unishop.domain.Product;
import com.itwill.unishop.domain.Review;
import com.itwill.unishop.exception.MemberNotFoundException;
import com.itwill.unishop.exception.PasswordMismatchException;
import com.itwill.unishop.service.CartService;
import com.itwill.unishop.service.ProductService;
import com.itwill.unishop.service.ReviewService;
@Controller
public class CartController {
	@Autowired
	private CartService cartService;

	String member_id = "uni1";
	
	@RequestMapping(value = "/cart_list",method = RequestMethod.POST)
	public String cart_list(Model model, HttpSession session, @RequestParam String member_id) {
		String forwardPath = " ";
		session.setAttribute("member_id", member_id);
		ArrayList<Cart> cartList = cartService.selectCartAll(member_id);
		model.addAttribute("cartList", cartList);
		forwardPath="cart_list";
		return forwardPath;
	}

	//모든 Exception을 던지면 이곳으로 날라온다
	/*
		@ExceptionHandler(Exception.class)
		public String cart_error_handle(Exception e) {
			return "error_handle";
		}
	*/
	
}
