package com.itwill.unishop.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.unishop.domain.Member;
import com.itwill.unishop.repository.MemberRepository;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberRepository memberRepository;
	
	
	
	
	@Override
	public Member selectMemberById(String member_id) {
		
		return memberRepository.selectMemberById(member_id);
	}

	@Override
	public int insertMember(Member newMember) {
		
		return memberRepository.insertMember(newMember);
	}

	@Override
	public int updateMember(Member updateMember) {
		
		return memberRepository.updateMember(updateMember);
	}

	@Override
	public int deleteMember(String member_id) {
		
		return memberRepository.deleteMember(member_id);
	}


	
	
}
