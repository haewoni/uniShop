package com.itwill.unishop.service;

import java.util.List;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Member;
import com.itwill.unishop.exception.ExistedMemberException;
import com.itwill.unishop.exception.MemberNotFoundException;
import com.itwill.unishop.exception.PasswordMismatchException;

public interface MemberService {
	public Member selectMemberById(String member_id);
	
	public int insertMember(Member newMember) throws ExistedMemberException;
	
	public int updateMember(Member updateMember);
	
	public int deleteMember(String member_id);
	
	public Member selectAddressById(String member_id);
	
	public Member loginMember(String member_id, String member_password) throws PasswordMismatchException,MemberNotFoundException;
	
}
