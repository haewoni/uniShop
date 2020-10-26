package com.itwill.unishop.service.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.service.QuestionService;

public class QuestionServiceTestMain {
	ApplicationContext applicationContext=new ClassPathXmlApplicationContext("spring/application-config.xml");
	QuestionService questionService=(QuestionService)applicationContext.getBean("questionServiceImpl");
}