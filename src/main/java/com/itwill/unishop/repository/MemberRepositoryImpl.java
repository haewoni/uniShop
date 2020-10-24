package com.itwill.unishop.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.unishop.domain.Member;
import com.itwill.unishop.mapper.MemberMapper;

@Repository("memberRepository")
public class MemberRepositoryImpl implements MemberRepository{
	@Autowired
	private MemberMapper memberMapper;

	@Override
	public Member selectMemberById(String member_id) {
		Member member = memberMapper.selectMemberById(member_id);
		return member;
	}

	@Override
	public int insertMember(Member newMember) {
		int rowcount = memberMapper.insertMember(newMember);
		return rowcount;
	}

	@Override
	public int updateMember(Member updateMember) {
		int rowcount = memberMapper.updateMember(updateMember);
		return rowcount;
	}

	@Override
	public int deleteMember(String member_id) {
		int rowcount = memberMapper.deleteMember(member_id);
		return rowcount;
	}

}
