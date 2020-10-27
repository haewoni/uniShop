package com.itwill.unishop.repository.test;

import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Question;
import com.itwill.unishop.repository.QuestionRepository;

public class QuestionRepositoryTestMain {

	public static void main(String[] args) throws Exception{
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		QuestionRepository questionRepository = (QuestionRepository) applicationContext.getBean("questionRepository");
		//System.out.println(questionRepository.selectAll());
		//System.out.println(questionRepository.insertQuestion(new Question(9, "제품에 하자가 있어요", "교환/환불", new Date(), "처리중", "제품에 이상한게 묻어서 왔어요. 환불해주세요", "uni1")));
		//Question question = new Question(8, "사이즈 문의", "상품", new Date(), "처리중", "160에 45면 어떤 사이즈를 사야 할까요?", "uni3");
		//System.out.println(questionRepository.updateQuestion(question));
		//System.out.println(questionRepository.deleteQuestion(8));

	}

}
