package com.itwill.unishop.service.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.service.MemberService;

public class MemberServiceTestMain {
	ApplicationContext applicationContext=new ClassPathXmlApplicationContext("spring/application-config.xml");
	MemberService memberService=(MemberService)applicationContext.getBean("memberServiceImpl");
	
	
}
