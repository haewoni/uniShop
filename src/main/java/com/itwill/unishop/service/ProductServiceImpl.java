package com.itwill.unishop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.unishop.domain.Member;
import com.itwill.unishop.repository.MemberRepository;
import com.itwill.unishop.repository.ProductRepository;

@Service
public class ProductServiceImpl implements MemberService{
	@Autowired
	private ProductRepository productRepository;

	@Override
	public Member selectMemberById(String member_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertMember(Member newMember) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateMember(Member updateMember) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(String member_id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}
