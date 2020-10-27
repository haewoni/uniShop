package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Question;

public interface QuestionMapper {
	
	public List<Question> selectAll();
	
	public Question selectById(String member_id);
	
	public int insertQuestion(Question question);
	
	public int deleteQuestion(String question_no);
	
	public int updateQuestion(String question_no);


}
