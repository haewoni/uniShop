package com.itwill.unishop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.unishop.service.CartService;
import com.itwill.unishop.service.DeliveryService;
import com.itwill.unishop.service.JumunService;
import com.itwill.unishop.service.Jumun_DetailService;
import com.itwill.unishop.service.MemberService;
import com.itwill.unishop.service.ProductService;
import com.itwill.unishop.service.QuestionService;
import com.itwill.unishop.service.ReviewService;
import com.itwill.unishop.service.WishListService;

@RestController
public class UnishopRestController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private ProductService productService;
	@Autowired
	private JumunService jumunService;
	@Autowired
	private Jumun_DetailService jumun_DetailService;
	@Autowired
	private CartService cartService;
	@Autowired
	private QuestionService questionService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private WishListService wishListService;
	@Autowired
	private DeliveryService deliveryService;
	
}
