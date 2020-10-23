package com.itwill.unishop.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.mapper.Jumun_DetailMapper;

public class Jumun_DetailRepositoryImplMyBatis implements Jumun_DetailRepository {
	@Autowired
	private Jumun_DetailMapper jumun_DetailMapper;
	
	
	
	public Jumun_DetailRepositoryImplMyBatis() {
		
	} 
	
	
	
	
	@Override
	public int insertJumunDetail(Jumun_Detail jumun_Detail) {
		
		int insertRowCount = 0;
		insertRowCount = jumun_DetailMapper.insertJumunDetail(jumun_Detail);
		return insertRowCount;
	}

	@Override
	public List<Jumun_Detail> selectAll() {
		return jumun_DetailMapper.selectAll();
	
	}

	@Override
	public Jumun_Detail selectByNo(int jumun_no) {
		return null;
	}

	@Override
	public int updateJumunDetail(Jumun_Detail jumun_Detail) {
		
		return 0;
	}

	@Override
	public int deleteJumunDetail(int jumun_d_no) {
		// TODO Auto-generated method stub
		return 0;
	}

}
