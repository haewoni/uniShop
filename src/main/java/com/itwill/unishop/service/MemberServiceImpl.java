package com.itwill.unishop.service;

import java.util.List;

import org.springframework.aop.ThrowsAdvice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.unishop.domain.Member;
import com.itwill.unishop.exception.ExistedMemberException;
import com.itwill.unishop.exception.MemberNotFoundException;
import com.itwill.unishop.exception.PasswordMismatchException;
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
	public int insertMember(Member newMember) throws ExistedMemberException{
		if(memberRepository.isExistMember(newMember.getMember_id())==1) {
			throw new ExistedMemberException("존재하는 아이디입니다.");
		}
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

	@Override
	public Member selectAddressById(String member_id) {
		
		return memberRepository.selectAddressById(member_id);
	}

	@Override
	public Member loginMember(String member_id, String member_password)
			throws PasswordMismatchException, MemberNotFoundException {
		Member member = memberRepository.selectMemberById(member_id);
		if(member==null) {
			throw new MemberNotFoundException("등록되지 않은 회원입니다.");
		}
		if(member.isMatchPassword(member_password)) {
			throw new PasswordMismatchException("비밀번호가 일치하지 않습니다.");
		}
		return member;
	}


	
	
}
