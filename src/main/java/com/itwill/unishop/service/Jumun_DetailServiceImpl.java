package com.itwill.unishop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.repository.Jumun_DetailRepository;

@Service
public class Jumun_DetailServiceImpl implements Jumun_DetailService {
	@Autowired
	private Jumun_DetailRepository jumun_DetailRepository;

	
	
	@Override
	public int insertJumunDetail(Jumun_Detail jumun_Detail) {
		return jumun_DetailRepository.insertJumunDetail(jumun_Detail);
	}

	@Override
	public List<Jumun_Detail> selectAll() {
		return jumun_DetailRepository.selectAll();
	}

	@Override
	public List<Jumun_Detail> selectByNo(int jumun_no) {
		return jumun_DetailRepository.selectByNo(jumun_no);
	}

	@Override
	public int updateJumunDetail(Jumun_Detail jumun_Detail) {
		return jumun_DetailRepository.updateJumunDetail(jumun_Detail);
	}

	@Override
	public int deleteJumunDetail(int jumun_d_no) {
		return jumun_DetailRepository.deleteJumunDetail(jumun_d_no);
	}
	
	
	
	
	

	
	
}
