package com.itwill.unishop.service.test;

import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Question;
import com.itwill.unishop.service.DeliveryServiceImpl;
import com.itwill.unishop.service.QuestionService;
import com.itwill.unishop.service.QuestionServiceImpl;

public class QuestionServiceTestMain {
	public static void main(String[] args) {
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("spring/application-config.xml");
		QuestionService questionService=(QuestionService)applicationContext.getBean("questionServiceImpl");
		QuestionServiceImpl questionServiceImpl = new QuestionServiceImpl();
			System.out.println(questionService.selectByNo(1));
		/*	
			System.out.println("selectAll() : ");
			System.out.println(questionService.selectAll());
			System.out.println("insertQuestion : ");
			System.out.println(questionService.insertQuestion(new Question(9, "제품에 하자가 있어요", "교환/환불", new Date(), "처리중", "제품에 이상한게 묻어서 왔어요. 환불해주세요", "uni1")));
			Question question = new Question(1, "사이즈 문의", "상품", new Date(), "처리중", "160에 45면 어떤 사이즈를 사야 할까요?", "uni3");
			System.out.println("updateQuestion : ");
			System.out.println(questionService.updateQuestion(question));
			System.out.println("deleteQuestion : ");
			System.out.println(questionService.deleteQuestion(9));
		*/
	}
}