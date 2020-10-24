package com.itwill.unishop.service;
public class QuestionServiceTestMain {
	public static void main(String[] args) throws Exception{
		QuestionService questionService=new QuestionService();
		System.out.println(questionService.selectAll());
		System.out.println(questionService.selectByNo("1"));
	}
}