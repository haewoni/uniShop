package com.itwill.unishop.controller;


import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Cart;
import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.domain.Member;
import com.itwill.unishop.service.CartService;
import com.itwill.unishop.service.JumunService;
import com.itwill.unishop.service.Jumun_DetailService;
import com.itwill.unishop.service.MemberService;

@Controller
public class JumunController { 

   @Autowired
   private MemberService memberService;
   @Autowired
   private CartService cartService;
   @Autowired
   private JumunService jumunService;
   @Autowired
   private Jumun_DetailService jumun_DetailService;


   /*
    * checkout(jumun) address 입력 폼
    */
   @RequestMapping("/jumun_address_form")
   public String jumun_address_form() {
      return "jumun_address_form"; 
   }
   
   @RequestMapping(value = "/jumun_address_action", method = RequestMethod.GET)
   public String jumun_address_action_GET() {
      return "redirect:jumun_address_form"; 
   }
   // Checkout- 주소 폼 액션
   @RequestMapping(value = "/jumun_address_action", method = RequestMethod.POST)
   public String jumun_address_action_POST(HttpSession session,@ModelAttribute Member member) {
      String forwardPath = "";
      //1. 세션으로 로그인 멤버 객체 가져오기
      Member loginMember = (Member) session.getAttribute("loginMember");
      //2. 로그인 멤버에 회원 정보+주소 set
      loginMember.setMember_id(loginMember.getMember_id());
      loginMember.setMember_name(member.getMember_name());
      loginMember.setMember_phone(member.getMember_phone());
      loginMember.setMember_address_name(member.getMember_address_name());
      loginMember.setMember_address_country(member.getMember_address_country());
      loginMember.setMember_address_city(member.getMember_address_city());
      loginMember.setMember_address_zipcode(member.getMember_address_zipcode());
      loginMember.setMember_address1(member.getMember_address1());
      loginMember.setMember_address2(member.getMember_address2());
      //3. 세션에 수정된 로그인 멤버 붙이기
      session.setAttribute("loginMember", loginMember);
      //4. 멤버서비스로 주소정보 업데이트
      memberService.updateAddress(loginMember);
      
      forwardPath="redirect:jumun_delivery_form";
      return forwardPath;
   }
   
   
   /*
    * checkout(jumun) - delivery 배송방법 폼
    */
   @RequestMapping("jumun_delivery_form")
   public String jumun_delivery_form() {
      return "jumun_delivery_form"; 
   }
   
   @RequestMapping(value = "/jumun_delivery_action", method = RequestMethod.GET)
   public String jumun_delivery_action_GET() {
      return "jumun_delivery_form"; 
   }
   //checkout 배송방법 폼 액션
   @RequestMapping(value = "/jumun_delivery_action", method = RequestMethod.POST)
   public String jumun_delivery_action_POST(HttpSession session, @RequestParam String deliveryStr) {
      String forwardPath = "";
      //1.주문 객체 생성 (DB 반영x)
      Jumun createJumun = new Jumun();
      //2. 일반 또는 특급 선택후, delivery_fee(배송비) set
      if(deliveryStr.equalsIgnoreCase("일반")) {
         createJumun.setDelivery_no("GEN");
         session.setAttribute("delivery_fee", 3000);
      }else {
         createJumun.setDelivery_no("EX");
         session.setAttribute("delivery_fee", 6000);
      }
      
      //3. 세션에 주문 객체 붙이기
      session.setAttribute("createJumun", createJumun);
      forwardPath="redirect:jumun_payment_form";
      return forwardPath;
   }
   
   
   /*
    * checkout(jumun) - payment 결제카드 폼
    */
   @RequestMapping("jumun_payment_form")
   public String payment_form() {
      return "jumun_payment_form";
   }
   
   @RequestMapping(value = "/jumun_payment_action", method = RequestMethod.GET)
   public String jumun_payment_action_GET() {
      return "redirect:jumun_payment_form"; 
   }
   // checkout 결제카드 폼 액션
   @RequestMapping(value = "/jumun_payment_action", method = RequestMethod.POST)
   public String jumun_payment_action_POST(HttpSession session, @ModelAttribute Jumun jumun) {
//      session.getAttribute("loginMember");
      // 1. 세션으로 카트총합금액, 배송비, 로그인 멤버 아이디 가져오기
	   String sMemberId = (String) session.getAttribute("sMemberId");
      int cart_subtotal = (int) session.getAttribute("cart_subtotal");
      int delivery_fee = (int)session.getAttribute("delivery_fee");
      //2. 세션으로 주문객체 가져오기
      Jumun createJumun = (Jumun)session.getAttribute("createJumun");
      //3. 주문 객체에 폼에서 가져온 정보 set
      createJumun.setJumun_no(1);
      createJumun.setJumun_status("주문");
      createJumun.setJumun_tot_price(cart_subtotal+delivery_fee);
      createJumun.setJumun_date(new Date());
      createJumun.setMember_id(sMemberId);
      createJumun.setCard_no(jumun.getCard_no());
      createJumun.setCard_expire_date(jumun.getCard_expire_date());
      createJumun.setCard_cvc(jumun.getCard_cvc());
      createJumun.setCard_member_name(jumun.getCard_member_name());
      
      session.setAttribute("createJumun", createJumun);
      String forwardPath = " ";
      forwardPath="redirect:jumun_review_form";
      return forwardPath;
   }
   
   
   /*
    * checkout(jumun) - review 주문확인 폼
    */
   @RequestMapping("jumun_review_form")
   public String review_form() {
      return "jumun_review_form"; 
   }
   
   @RequestMapping(value = "/jumun_review_action", method = RequestMethod.GET)
   public String jumun_review_action_GET(Model model,HttpSession session,@ModelAttribute Jumun jumun) {
      String forwardPath = " ";
      //1. 세션으로 카트리스트와 생성한 주문객체 가져오기
      ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");
      Jumun createJumun = (Jumun) session.getAttribute("createJumun");
      //2. 가져온 주문 객체로 주문생성 후, 리턴값 주문 번호 jumun_no에 담기
      int jumun_no = jumunService.insertJumun(createJumun);
      //3. jumun_complete 페이지에 넘겨줄 주문번호
      model.addAttribute("jumun_no", jumun_no);
      //4. jumun_detail 객체 생성 / for문으로 cartlist 돌려서 insert 서비스 실행
      Jumun_Detail jumun_Detail=new Jumun_Detail();
      
      for (Cart cartItem : cartList) {
      jumun_Detail.setJumun_no(jumun_no);
      jumun_Detail.setJumun_d_no(-9999);
      jumun_Detail.setProduct_no(cartItem.getProduct_no());
      jumun_Detail.setJumun_d_product_name(cartItem.getProduct_name());
      jumun_Detail.setJumun_d_product_price(cartItem.getCart_tot_price());
      jumun_Detail.setJumun_d_product_qty(Integer.toString(cartItem.getCart_qty()));
      jumun_Detail.setJumun_d_product_size(cartItem.getCart_product_size());
      
      jumun_DetailService.insertJumunDetail(jumun_Detail);
   }
      forwardPath="forward:jumun_complete_form";
      return forwardPath;
   }

      
   /*
    * jumun - complete
    */
   
   
   @RequestMapping("jumun_complete_form")
   public String complete_form(Model model,HttpSession session) {
	   String sMemberId = (String) session.getAttribute("sMemberId");
       cartService.deleteCartByMemberId(sMemberId);
       return "jumun_complete_form";
   }

   
}