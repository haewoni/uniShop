package com.itwill.unishop.service;

import java.util.ArrayList;

import com.itwill.unishop.domain.Question;



public interface QuestionService {
	/*
	 * service 주석 달기
	 * question 카테고리 우선순위 상태 메시지 질문자 처리정보 볼 수 있게 하는것
	 * 
	 */
	/*
	 * 질문 전체 목록 보기
	 */
	public ArrayList<Question> selectAll();
	/*
	 * 본인 질문 보기
	 */
	public Question selectById(String member_id);
	/*
	 * 질문 등록하기
	 */
	public int insertQuestion(Question question);
	/*
	 * 질문 지우기
	 */
	public int deleteQuestion(int question_no);
	/*
	 * 질문 수정하기
	 */
	public int updateQuestion(Question updateQuestion);
}
