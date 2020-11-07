package com.itwill.unishop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping("/member_wishlist")
	public String member_wishlist(Model model, HttpSession session) {
		String forwardPath="";
		String sMemberId = (String) session.getAttribute("sMemberId");
		try {
			ArrayList<WishList> wishList = wishListService.selectWishListAll(sMemberId);
			model.addAttribute("wishList", wishList);
			forwardPath="member_wishlist";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}
}