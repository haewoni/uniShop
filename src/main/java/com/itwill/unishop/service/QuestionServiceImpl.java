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

	@Override
	public ArrayList<Question> selectAll() {
		List<Question> questionList2 = questionRepository.selectAll();
		ArrayList<Question> questionList1 = (ArrayList<Question>)questionList2;
		return questionList1;
	}

	@Override
	public Question selectById(String member_id) {
		Question question = questionRepository.selectById(member_id);
		return question;
	}

	@Override
	public int insertQuestion(Question question) {
		int rowcount = questionRepository.insertQuestion(question);
		return rowcount;
	}

	@Override
	public int deleteQuestion(String question_no) {
		int rowcount = questionRepository.deleteQuestion(question_no);
		return rowcount;
	}

	@Override
	public int updateQuestion(String question_no) {
		int rowcount = questionRepository.updateQuestion(question_no);
		return rowcount;
	}
	
	
}
