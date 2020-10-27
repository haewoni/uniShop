package com.itwill.unishop.repository;

import java.util.ArrayList;

import com.itwill.unishop.domain.Question;

public interface QuestionRepository {
	
	public ArrayList<Question> selectAll();
	
	public Question selectById(String member_id);
	
	public int insertQuestion(Question question);
	
	public int deleteQuestion(String question_no);
	
	public int updateQuestion(String question_no);
}
