package com.itwill.unishop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.repository.JumunRepository;

@Service
public class JumunServiceImpl implements JumunService{
	@Autowired
	private JumunRepository jumunRepository;

	
	
	@Override
	public int insertJumun(Jumun jumun) {
		return jumunRepository.insertJumun(jumun);
	}

	@Override
	public List<Jumun> selectAll() {
		return jumunRepository.selectAll();
	}

	@Override
	public List<Jumun> selectById(String member_id) {
		return jumunRepository.selectById(member_id);
	}

	@Override
	public int updateJumun(Jumun jumun) {
		return jumunRepository.updateJumun(jumun);
	}

	@Override
	public int deleteJumunByNo(int jumun_no) {
		return jumunRepository.deleteJumunByNo(jumun_no);
	}

	@Override
	public int updateJumunCard(Jumun jumun) {
		return jumunRepository.updateJumunCard(jumun);
	}
	
	
}
