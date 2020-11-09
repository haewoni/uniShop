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
import com.itwill.unishop.service.JumunService;
import com.itwill.unishop.service.Jumun_DetailService;
import com.itwill.unishop.service.MemberService;

@Controller
public class JumunController { 

   @Autowired
   private MemberService memberService;
   @Autowired
   private JumunService jumunService;
   @Autowired
   private Jumun_DetailService jumun_DetailService;


   /*
    * jumun - address
    */
   @RequestMapping("/jumun_address_form")
   public String jumun_address_form(Model model,HttpSession session) {
      Member loginMember = (Member) session.getAttribute("loginMember");
      model.addAttribute("loginMember", loginMember);
      return "jumun_address_form"; 
   }
   
   @RequestMapping(value = "/jumun_address_action", method = RequestMethod.GET)
   public String jumun_address_action_GET() {
      return "redirect:jumun_address_form"; 
   }
   
   @RequestMapping(value = "/jumun_address_action", method = RequestMethod.POST)
   public String jumun_address_action_POST(HttpSession session,@ModelAttribute Member member) {
      String forwardPath = "";
      Member loginMember = (Member) session.getAttribute("loginMember");
      member.setMember_id(loginMember.getMember_id());
      member.setMember_password(loginMember.getMember_password());
      member.setMember_email(loginMember.getMember_email());
      
      memberService.updateMember(member);
      session.setAttribute("loginMember", member);
      
      forwardPath="redirect:jumun_delivery_form";
      return forwardPath;
   }
   
   
   /*
    * jumun - delivery
    */
   @RequestMapping("jumun_delivery_form")
   public String jumun_delivery_form() {
      return "jumun_delivery_form"; 
   }
   
   @RequestMapping(value = "/jumun_delivery_action", method = RequestMethod.GET)
   public String jumun_delivery_action_GET() {
      return "jumun_delivery_form"; 
   }
   
   @RequestMapping(value = "/jumun_delivery_action", method = RequestMethod.POST)
   public String jumun_delivery_action_POST(HttpSession session, @RequestParam String deliveryStr) {
      String forwardPath = "";
      Jumun createJumun = new Jumun();
      
      if(deliveryStr=="일반") {
         createJumun.setDelivery_no("GEN");
         session.setAttribute("delivery_fee", 3000);
      }else {
         createJumun.setDelivery_no("EX");
         session.setAttribute("delivery_fee", 6000);
      }
      
      session.setAttribute("createJumun", createJumun);
      forwardPath="redirect:jumun_payment_form";
      return forwardPath;
   }
   
   
   /*
    * jumun - payment
    */
   @RequestMapping("jumun_payment_form")
   public String payment_form(HttpSession session) {
      session.getAttribute("delivery_fee");
      session.getAttribute("sMemberId");
      return "jumun_payment_form";
   }
   
   @RequestMapping(value = "/jumun_payment_action", method = RequestMethod.GET)
   public String jumun_payment_action_GET() {
      return "redirect:jumun_payment_form"; 
   }
   
   @RequestMapping(value = "/jumun_payment_action", method = RequestMethod.POST)
   public String jumun_payment_action_POST(HttpSession session, @ModelAttribute Jumun jumun) {
      session.getAttribute("loginMember");
      
      int cart_subtotal = (int) session.getAttribute("cart_subtotal");
      int delivery_fee = (int)session.getAttribute("delivery_fee");
      String sMemberId = (String) session.getAttribute("sMemberId");
      
      Jumun createJumun = (Jumun)session.getAttribute("createJumun");
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
    * jumun - review
    */
   @RequestMapping("jumun_review_form")
   public String review_form(HttpSession session) {
      session.getAttribute("loginMember");
      return "jumun_review_form"; 
   }
   
   @RequestMapping(value = "/jumun_review_action", method = RequestMethod.GET)
   public String jumun_review_action_GET(Model model,HttpSession session,@ModelAttribute Jumun jumun) {
      String forwardPath = " ";
      session.getAttribute("sMemberId");
      ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");
      Jumun createJumun = (Jumun) session.getAttribute("createJumun");
      
      int jumun_no = jumunService.insertJumun(createJumun);
      
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
      forwardPath="redirect:jumun_complete_form";
      return forwardPath;
   }

      
   /*
    * jumun - complete
    */
   @RequestMapping("jumun_complete_form")
   public String complete_form() {
      return "jumun_complete_form"; 
   }

   
   
}