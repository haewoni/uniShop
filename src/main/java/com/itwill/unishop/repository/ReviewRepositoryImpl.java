package com.itwill.unishop.repository;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.unishop.domain.Review;
import com.itwill.unishop.mapper.ReviewMapper;

public class ReviewRepositoryImpl implements ReviewRepository{
	
	private SqlSessionFactory sqlSessionFactory;
	
	public ReviewRepositoryImpl() {
		InputStream in = null;
		
		try {
			in = Resources.getResourceAsStream("mybatis-config.xml");
			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertReview(Review review) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ReviewMapper reviewMapper = sqlSession.getMapper(ReviewMapper.class);
		int insertCount = 0;
		insertCount = reviewMapper.insertReview(review);
		return insertCount;
	};
	
	public Review selectReviewByNo(int no) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ReviewMapper reviewMapper = sqlSession.getMapper(ReviewMapper.class);
		Review reviewOne = reviewMapper.selectReviewByNo(no);
		return reviewOne;
	};
	
	public ArrayList<Review> selectReviewAll() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ReviewMapper reviewMapper = sqlSession.getMapper(ReviewMapper.class);
		ArrayList<Review> reviewsList = (ArrayList<Review>)reviewMapper.selectReviewAll();
		return reviewsList;
	};
	
	public int updateReviewById(Review review) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ReviewMapper reviewMapper = sqlSession.getMapper(ReviewMapper.class);
		int updateCount = reviewMapper.updateReviewById(review);
		return updateCount;
	};
	
	public int deleteReviewById(int no) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ReviewMapper reviewMapper = sqlSession.getMapper(ReviewMapper.class);
		int deleteCount = reviewMapper.deleteReviewById(no);
		return deleteCount;
	}
}
