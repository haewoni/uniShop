package com.itwill.unishop.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.mapper.JumunMapper;
@Repository
public class JumunRepositoryImpl implements JumunRepository{
	@Autowired
	private JumunMapper jumunMapper;
	
	
	public JumunRepositoryImpl() {
		
	}
	
	
	
	
	
	@Override
	public int insertJumun(Jumun jumun) {
		return jumunMapper.insertJumun(jumun);
	}

	@Override
	public List<Jumun> selectAll() {
		return jumunMapper.selectAll();
	}

	@Override
	public Jumun selectById(String member_id) {
		return jumunMapper.selectById(member_id);
	}

	@Override
	public int updateJumun(Jumun jumun) {
		return jumunMapper.updateJumun(jumun);
	}

	@Override
	public int deleteJumunByNo(int jumun_no) {
		return jumunMapper.deleteJumunByNo(jumun_no);
	}

}
