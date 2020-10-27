package com.itwill.unishop.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.unishop.domain.Question;
import com.itwill.unishop.mapper.QuestionMapper;

@Repository("questionRepository")
public class QuestionRepositoryImpl implements QuestionRepository, QuestionMapper{
	@Autowired
	private QuestionMapper questionMapper;
	
	public QuestionRepositoryImpl() throws Exception{
		
	}
	
	@Override
	public ArrayList<Question> selectAll() {
		List<Question> questionList2 = questionMapper.selectAll();
		ArrayList<Question> questionList1 = (ArrayList<Question>)questionList2;
		return questionList1;
	}

	@Override
	public Question selectById(String member_id) {
		Question question = questionMapper.selectById(member_id);
		return question;
	}
	
	@Override
	public int insertQuestion(Question question) {
		int rowcount = questionMapper.insertQuestion(question);
		return rowcount;
	}
	@Override
	public int deleteQuestion(String question_no) {
		int rowcount = questionMapper.deleteQuestion(question_no);
		return rowcount;
	}

	@Override
	public int updateQuestion(String question_no) {
		int rowcount = questionMapper.updateQuestion(question_no);
		return rowcount;
	}

}
