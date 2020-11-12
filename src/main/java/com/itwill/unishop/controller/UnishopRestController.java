package com.itwill.unishop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.domain.Question;
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
	
	@RequestMapping(value = "jumun_detail")
	public List<Jumun_Detail> jumun_detail(@RequestParam int jumun_no) throws Exception{
		return jumun_DetailService.selectByNo(jumun_no);
	}
	@RequestMapping(value = "jumun_delivery_detail")
	public Delivery jumun_delivery_detail(@RequestParam String delivery_no) throws Exception{
		return deliveryService.selectByNo(delivery_no);
	}
	
	@RequestMapping(value = "question_insert_action")
	public int question_insert_action(Question question) {
		return questionService.insertQuestion(question);
	}
}
