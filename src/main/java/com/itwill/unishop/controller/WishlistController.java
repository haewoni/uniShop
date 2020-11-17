package com.itwill.unishop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Cart;
import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.service.MemberService;
import com.itwill.unishop.service.WishListService;

@Controller
public class WishlistController {
	
//	@Autowired
//	private MemberService memberService;
	@Autowired
	private WishListService wishListService;
	//멤버 찜 리스트
	@RequestMapping("/member_wishlist_detail")
	public String member_wishlist(Model model, HttpSession session) throws Exception {
		
		System.out.println("member_wishlist_detail");
		
		String forwardPath="";
		String sMemberId = (String) session.getAttribute("sMemberId");
		ArrayList<WishList> wishList = wishListService.selectWishListAll(sMemberId);
		model.addAttribute("wishList", wishList);
		forwardPath="member_wishlist_detail";
		return forwardPath;
	}
	@RequestMapping("/member_wishlist_delete_one")
	public String member_wishlist_delete_one(Model model, HttpSession session, @RequestParam String product_no) {
		String forwardPath="";
		String sMemberId = (String) session.getAttribute("sMemberId");
		model.addAttribute("product_no", product_no);
		try {
			wishListService.deleteWishListById(sMemberId, product_no);
			forwardPath = "redirect:member_wishlist_detail?member_id="+sMemberId;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
	@RequestMapping("/member_wishlist_delete_all")
	public String member_wishlist_delete_all(HttpSession session) {
		String forwardPath="";
		String sMemberId = (String) session.getAttribute("sMemberId");
		try {
			wishListService.deleteWishListAll(sMemberId);
			forwardPath = "redirect:member_wishlist_detail?member_id="+sMemberId;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
	
}