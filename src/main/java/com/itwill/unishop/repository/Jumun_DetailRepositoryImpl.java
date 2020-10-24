package com.itwill.unishop.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.mapper.Jumun_DetailMapper;
@Repository
public class Jumun_DetailRepositoryImpl implements Jumun_DetailRepository {
	@Autowired
	private Jumun_DetailMapper jumun_DetailMapper;
	
	
	
	public Jumun_DetailRepositoryImpl() {
		
	} 
	
	
	
	
	@Override
	public int insertJumunDetail(Jumun_Detail jumun_Detail) {
		return jumun_DetailMapper.insertJumunDetail(jumun_Detail);
	}

	@Override
	public List<Jumun_Detail> selectAll() {
		return jumun_DetailMapper.selectAll();
	}

	@Override
	public Jumun_Detail selectByNo(int jumun_no) {
		return jumun_DetailMapper.selectByNo(jumun_no);
	}

	@Override
	public int updateJumunDetail(Jumun_Detail jumun_Detail) {
		return jumun_DetailMapper.updateJumunDetail(jumun_Detail);
	}

	@Override
	public int deleteJumunDetail(int jumun_d_no) {
		return jumun_DetailMapper.deleteJumunDetail(jumun_d_no);
	}

}
