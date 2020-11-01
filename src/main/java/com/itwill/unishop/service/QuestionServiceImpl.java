package com.itwill.unishop.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.unishop.domain.Question;
import com.itwill.unishop.repository.QuestionRepository;

@Service
public class QuestionServiceImpl implements QuestionService{
	@Autowired
	private QuestionRepository questionRepository;
	/*
	 * 질문 전체 목록 보기
	 */
	@Override
	public ArrayList<Question> selectAll() {
		List<Question> questionList2 = questionRepository.selectAll();
		ArrayList<Question> questionList1 = (ArrayList<Question>)questionList2;
		return questionList1;
	}
	/*
	 * 본인 질문 보기
	 */
	@Override
	public ArrayList<Question> selectById(String member_id) {
		ArrayList<Question> questionList = questionRepository.selectById(member_id);
		return questionList;
	}
	/*
	 * 질문 등록하기
	 */
	@Override
	public int insertQuestion(Question question) {
		int rowcount = questionRepository.insertQuestion(question);
		return rowcount;
	}
	/*
	 * 질문 지우기
	 */
	@Override
	public int deleteQuestion(int question_no) {
		int rowcount = questionRepository.deleteQuestion(question_no);
		return rowcount;
	}
	/*
	 * 질문 수정하기
	 */
	@Override
	public int updateQuestion(Question updateQuestion) {
		int rowcount = questionRepository.updateQuestion(updateQuestion);
		return rowcount;
	}
	@Override
	public Question selectByNo(int question_no) {
		Question question = questionRepository.selectByNo(question_no);
		return question;
	}
	
	
}
