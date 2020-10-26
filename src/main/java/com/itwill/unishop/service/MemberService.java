package com.itwill.unishop.service;

import java.util.List;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Member;

public interface MemberService {
	public Member selectMemberById(String member_id);
	
	public int insertMember(Member newMember);
	
	public int updateMember(Member updateMember);
	
	public int deleteMember(String member_id);
}
