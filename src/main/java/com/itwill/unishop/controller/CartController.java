package com.itwill.unishop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	@Autowired
	private ProductService productService;

	String member_id = "uni1";
	
	//@RequestMapping(value = "/cart_list",method = RequestMethod.POST)
	//public String cart_list(Model model, HttpSession session, @RequestParam String member_id) {
	@RequestMapping(value = "/cart_list")
	public String cart_list(Model model, HttpSession session) {
		String forwardPath = " ";
		session.setAttribute("member_id", member_id);
		ArrayList<Cart> cartList = cartService.selectCartAll(member_id);
		model.addAttribute("cartList", cartList);
		
		ArrayList<Product> productList = productService.selectEight();
		//model.addAttribute("productList", productList);

		session.setAttribute("cartList", cartList);
		forwardPath="cart_list";
		return forwardPath;
	}

	@RequestMapping("cart_delete_cartNo_action_get")
	public String cart_delete_cartNo_action_get(Model model, HttpSession session, @RequestParam int cart_no) {
		String forwardPath = " ";
		session.setAttribute("member_id", member_id);
		int delete_Cartno = cartService.deleteCartByCartNo(cart_no);
		if (delete_Cartno == 1) {
			forwardPath="redirect:cart_list?member_id="+member_id;
		} else {
			return "error_handle";
		}
		
		return forwardPath;
	}
	
	@RequestMapping("cart_update_action_get")
	public String cart_update_action_get(Model model, HttpSession session, @RequestParam int cart_no, @RequestParam String cart_qty) {
	//public String cart_update_action(Model model, HttpSession session, @RequestParam int cart_no) {
		//public String cart_update_action(Model model, HttpSession session) {
		
		//System.out.println("cart_no :");
		//System.out.println("cart_no :"+cart_no);
		//System.out.println("cart_qty :"+cart_qty);
		String forwardPath = " ";
		session.setAttribute("member_id", member_id);
		int a = Integer.parseInt(cart_qty);
		Cart updateCart = new Cart(cart_no, a, 1, "", "", "");
		int update_Cartno = cartService.updateCart(updateCart);
		if (update_Cartno == 1) {
			forwardPath="redirect:cart_list?member_id="+member_id;
		} else {
			return "error_handle";
		}
		
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