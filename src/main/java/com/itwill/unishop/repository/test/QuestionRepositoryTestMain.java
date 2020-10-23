package com.itwill.unishop.repository.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.repository.QuestionRepository;

public class QuestionRepositoryTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");
		QuestionRepository questionRepository = (QuestionRepository) applicationContext.getBean("questionRepository");
		System.out.println(questionRepository.selectAll());

	}

}
