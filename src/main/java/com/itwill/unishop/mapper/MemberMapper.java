package com.itwill.unishop.mapper;

import com.itwill.unishop.domain.Member;

public interface MemberMapper {
	
	public Member selectMemberById(String member_id);
	
	public Member selectAddressById(String member_id);
	
	public int insertMember(Member newMember);
	
	public int updateMember(Member updateMember);
	
	public int deleteMember(String member_id);
	
	public Member loginMember(String member_id, String member_password);
}
