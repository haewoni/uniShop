package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Question;

public interface QuestionMapper {
	
	public List<Question> selectAll();
	
	public List<Question> selectById(String member_id);
	
	public Question selectByNo(int question_no);
	
	public int insertQuestion(Question question);
	
	public int deleteQuestion(int question_no);
	
	public int updateQuestion(Question updatequestion);


}
