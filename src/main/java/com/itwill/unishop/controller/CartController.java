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
import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.exception.MemberNotFoundException;
import com.itwill.unishop.exception.PasswordMismatchException;
import com.itwill.unishop.service.CartService;
import com.itwill.unishop.service.ProductService;
import com.itwill.unishop.service.ReviewService;
import com.itwill.unishop.service.WishListService;
import com.itwill.unishop.service.WishListServiceImpl;
@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	@Autowired
	private ProductService productService;
	@Autowired
	private WishListService wishListService;

	String member_id = "uni1";
	
	@RequestMapping(value = "/cart_list")
	public String cart_list(Model model, HttpSession session) {
	//public String cart_list(Model model, HttpSession session, @RequestParam String member_id) {

		String forwardPath = " ";

		session.setAttribute("member_id", member_id); 
		ArrayList<Cart> cartList = cartService.selectCartAll(member_id);
		//String sMemberId = (String) session.getAttribute("sMemberId");
		//ArrayList<Cart> cartList = cartService.selectCartAll(sMemberId);
		//model.addAttribute("cartList", cartList);
	    int cart_subtotal = 0;
	      for (Cart cart : cartList) {
	         cart_subtotal+=cart.getCart_tot_price();
	      }
	    session.setAttribute("cart_subtotal", cart_subtotal);
		session.setAttribute("cartList", cartList);
		
		ArrayList<Product> productList = productService.selectEight();
		session.setAttribute("productList", productList);
		forwardPath="cart_list";
		return forwardPath;
	}
	
	@RequestMapping("cart_delete_cartNo_action_get")
	public String cart_delete_cartNo_action_get(Model model, HttpSession session, @RequestParam int cart_no) {
		String forwardPath = " ";
		//String sMemberId = (String) session.getAttribute("sMemberId");

		session.setAttribute("member_id", member_id);
		int delete_Cartno = cartService.deleteCartByCartNo(cart_no);
		if (delete_Cartno == 1) {
			//forwardPath="redirect:cart_list?member_id="+sMemberId;
			forwardPath="redirect:cart_list?member_id="+member_id;
		} else {
			return "error_handle";
		}
		
		return forwardPath;
	}
	
	@RequestMapping("cart_delete_memberId_action_get")
	public String cart_delete_memberId_action_get(Model model, HttpSession session) {
		String forwardPath = " ";
		//String sMemberId = (String) session.getAttribute("sMemberId");

		session.setAttribute("member_id", member_id);
		int delete_Cartno = cartService.deleteCartByMemberId(member_id);
		if (delete_Cartno == 1) {
			//forwardPath="redirect:cart_list?member_id="+sMemberId;
			forwardPath="redirect:cart_list?member_id="+member_id;
		} else {
			return "error_handle";
		}
		
		return forwardPath;
	}
		
	
	
	@RequestMapping("/cart_update_action_get")
	public String cart_update_action_get(Model model, HttpSession session, @RequestParam int cart_no, @RequestParam int cart_qty) {
		
		String forwardPath = " ";

		session.setAttribute("member_id", member_id);
		//String sMemberId = (String) session.getAttribute("sMemberId");

		Cart updateCart = new Cart(cart_no, cart_qty, 1, "", "", "");
		int update_Cartno = cartService.updateCart(updateCart);
		if (update_Cartno == 1) {
			//forwardPath="redirect:cart_list?member_id="+sMemberId;
			forwardPath="redirect:cart_list?member_id="+member_id;
		} else {
			return "error_handle";
		}
		
		return forwardPath;
	}
	
	@RequestMapping("wishList_insert_action_get")
	public String wishList_insert_action_get(Model model, HttpSession session,
			                                              @RequestParam String product_no) throws Exception {
		
		String forwardPath = " ";

		session.setAttribute("member_id", member_id);
		//String sMemberId = (String) session.getAttribute("sMemberId");

		WishList insertWishList = new WishList(-1, member_id, product_no, null);
		int insert_WishList = wishListService.insertWishList(insertWishList);
		
		System.out.println("insert_WishList : "+insert_WishList);
		
		if (insert_WishList == 1) {
			//forwardPath="redirect:cart_list?member_id="+sMemberId;
			forwardPath="redirect:cart_list?member_id="+member_id;
		} else {
			return "error_handle";
		}
		
		return forwardPath;
	}
	
	@RequestMapping("cart_insert_action_get")
	public String cart_insert_action_get(Model model, HttpSession session,
			                                          @RequestParam int cart_tot_price,
			                                          @RequestParam String product_no) throws Exception {
		
		String forwardPath = " ";

		session.setAttribute("member_id", member_id);
		//String sMemberId = (String) session.getAttribute("sMemberId");

		Cart insertCart = new Cart(-1, 1, cart_tot_price, "M", member_id, product_no);
		int insert_Cart = cartService.insertCart(insertCart);
		
		System.out.println("insert_WishList : "+insert_Cart);
		
		if (insert_Cart == 1) {
			//forwardPath="redirect:cart_list?member_id="+sMemberId;
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
