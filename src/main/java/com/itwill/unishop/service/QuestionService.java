package com.itwill.unishop.service;

import java.util.ArrayList;

import com.itwill.unishop.domain.Question;



public interface QuestionService {
	/*
	 * service 주석 달기
	 * question 카테고리 우선순위 상태 메시지 질문자 처리정보 볼 수 있게 하는것
	 * 
	 */
	public ArrayList<Question> selectAll();
	
	public Question selectByNo(String question_no);
	
	public int insertQuestion(Question question);
	
	public int deleteQuestion(String question_no);
	
	public int updateQuestion(String question_no);
}
