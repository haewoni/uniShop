package com.itwill.unishop.repository;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.unishop.domain.Address;
import com.itwill.unishop.domain.Member;
import com.itwill.unishop.mapper.MemberMapper;

@Repository
public class MemberRepositoryImpl implements MemberRepository{
	@Autowired
	private MemberMapper memberMapper;

	@Override
	public Member selectMemberById(String member_id) {
		
		return memberMapper.selectMemberById(member_id);
	}

	@Override
	public Address selectAddressById(String member_id) {
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
