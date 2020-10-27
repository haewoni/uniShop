package com.itwill.unishop.repository;

import com.itwill.unishop.domain.Member;

public interface MemberRepository {
	
	public Member selectMemberById(String member_id);
	
	public int insertMember(Member newMember);
	
	public Member selectAddressById(String member_id);
	
	public int updateMember(Member updateMember);
	
	public int deleteMember(String member_id);
	
	public Member loginMember(String member_id, String member_password);
}
