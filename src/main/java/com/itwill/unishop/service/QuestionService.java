package com.itwill.unishop.service;

import java.util.ArrayList;

import com.itwill.unishop.domain.Question;
import com.itwill.unishop.mapper.QuestionMapper;
import com.itwill.unishop.repository.QuestionRepository;
import com.itwill.unishop.repository.QuestionRepositoryImpl;

public class QuestionService {
	private QuestionMapper questionMapper;
	public QuestionService() throws Exception {
		//guestDao=new GuestDaoImplMyBatis();
		questionMapper=new QuestionRepositoryImpl();
		
	}
	/*
	 * Create
	 */
	public int insertQuestion(Question question) throws Exception{
		return questionMapper.insertQuestion(question);
	}
	/*
	 * Read
	 */
	public Question selectByNo(String question_no) throws Exception{
		return questionMapper.selectByNo(question_no);
	}
	public ArrayList<Question> selectAll() throws Exception{
		return (ArrayList<Question>) questionMapper.selectAll();
	}
	/*
	 * Update
	 */
	public int updateQuestion(String question_no) throws Exception{
		return questionMapper.updateQuestion(question_no);
	}
	/*
	 * Delete
	 */
	public int deleteQuestion(String question_no) throws Exception{
		return questionMapper.deleteQuestion(question_no);
	}
}
