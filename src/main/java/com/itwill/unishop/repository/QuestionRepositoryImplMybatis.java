package com.itwill.unishop.repository;

import java.io.InputStream;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.unishop.domain.Question;
import com.itwill.unishop.mapper.QuestionMapper;

public class QuestionRepositoryImplMybatis implements QuestionRepository{
	
	private SqlSessionFactory sqlSessionFactory;
	
	public QuestionRepositoryImplMybatis() throws Exception{
		InputStream in=null;
		try {
			in=Resources.getResourceAsStream("application-config.xml");
			this.sqlSessionFactory = 
					new SqlSessionFactoryBuilder()
					.build(in);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public ArrayList<Question> selectAll(String question_no) {
		ArrayList<Question> questionList = new ArrayList<Question>();
		questionList = (ArrayList<Question>) sqlSessionFactory.openSession(true).getMapper(QuestionMapper.class).selectAll();
		return questionList;
	}

	@Override
	public Question selectByNo(String question_no) {
		Question question = new Question();
		question = sqlSessionFactory.openSession(true).getMapper(QuestionMapper.class).selectByNo(question_no);
		return question;
	}
	
	@Override
	public int insertQuestion(Question question) {
		int rowcount = 0;
		rowcount = sqlSessionFactory.openSession(true).getMapper(QuestionMapper.class).insertQuestion(question);
		return rowcount;
	}
	@Override
	public int deleteQuestion(String question_no) {
		int rowcount = 0;
		rowcount = sqlSessionFactory.openSession(true).getMapper(QuestionMapper.class).deleteQuestion(question_no);
		return rowcount;
	}

	@Override
	public int updateQuestion(String question_no) {
		int rowcount = 0;
		rowcount = sqlSessionFactory.openSession(true).getMapper(QuestionMapper.class).updateQuestion(question_no);
		return rowcount;
	}


	
}
