package com.itwill.unishop.repository;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.mapper.JumunMapper;

public class JumunRepositoryImplMyBatis implements JumunRepository{

	private SqlSessionFactory sqlSessionFactory;
	
	
	public JumunRepositoryImplMyBatis() {
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream("mybatis-config.xml");
			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	@Override
	public int insertJumun(Jumun jumun) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		JumunMapper jumunMapper = sqlSession.getMapper(JumunMapper.class);
		int insertRowCount = 0;
		insertRowCount = jumunMapper.insertJumun(jumun);
		return insertRowCount;
	}

	@Override
	public ArrayList<Jumun> selectAll() {
		ArrayList<Jumun> jumunList = new ArrayList<Jumun>();
		jumunList = sqlSessionFactory.openSession(true)
									 .getMapper(JumunMapper.class)
							 		 .selectAll();
		return jumunList;
	}

	@Override
	public Jumun selectById(String member_id) {
		Jumun jumun = new Jumun();
		jumun = sqlSessionFactory.openSession(true)
								 .getMapper(JumunMapper.class)
								 .selectById(member_id);
		return null;
	}

	@Override
	public int updateJumun(Jumun jumun) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		JumunMapper jumunMapper = sqlSession.getMapper(JumunMapper.class);
		int updateRowCount = 0;
		updateRowCount = jumunMapper.updateJumunByNo(jumun);
		return updateRowCount;
	}

	@Override
	public int deleteJumunByNo(int jumun_no) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		JumunMapper jumunMapper = sqlSession.getMapper(JumunMapper.class);
		int deleteRowCount = jumunMapper.deleteJumunByNo(jumun_no);
		return deleteRowCount;
	}

}
