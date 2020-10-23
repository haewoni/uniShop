package com.itwill.unishop.repository;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.mapper.JumunMapper;
import com.itwill.unishop.mapper.Jumun_DetailMapper;

public class JumunRepositoryImplMyBatis implements JumunRepository{
	@Autowired
	private JumunMapper jumunMapper;
	
	
	public JumunRepositoryImplMyBatis() {
		
	}
	
	
	
	
	
	@Override
	public int insertJumun(Jumun jumun) {
	
		int insertRowCount = 0;
		insertRowCount = jumunMapper.insertJumun(jumun);
		return insertRowCount;
	}

	@Override
	public ArrayList<Jumun> selectAll() {
		ArrayList<Jumun> jumunList = new ArrayList<Jumun>();
		
		return jumunList;
	}

	@Override
	public Jumun selectById(String member_id) {
		Jumun jumun = new Jumun();
	
		return jumun;
	}

	@Override
	public int updateJumun(Jumun jumun) {
	
		
		int updateRowCount = 0;
		updateRowCount = jumunMapper.updateJumun(jumun);
		return updateRowCount;
	}

	@Override
	public int deleteJumunByNo(int jumun_no) {
		
	
		int deleteRowCount = jumunMapper.deleteJumunByNo(jumun_no);
		return deleteRowCount;
	}

}
