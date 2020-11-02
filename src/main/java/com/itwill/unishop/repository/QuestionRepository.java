package com.itwill.unishop.repository;

import java.util.ArrayList;

import com.itwill.unishop.domain.Question;

public interface QuestionRepository {
	
	public ArrayList<Question> selectAll();
	
	public ArrayList<Question> selectById(String member_id);
	
	public Question selectByNo(int question_no);
	
	public int insertQuestion(Question question);
	
	public int deleteQuestion(int question_no);
	
	public int updateQuestion(Question updateQuestion);
}
