package com.itwill.unishop.service;

import java.util.List;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Member;
import com.itwill.unishop.exception.ExistedMemberException;
import com.itwill.unishop.exception.MemberNotFoundException;
import com.itwill.unishop.exception.PasswordMismatchException;

public interface MemberService {
	
	//회원정보
	public Member selectMemberById(String member_id);
	//회원주소
	public Member selectAddressById(String member_id);
	//회원가입
	public int insertMember(Member newMember) throws ExistedMemberException;
	//회원 로그인
	public Member loginMember(String member_id, String member_password) throws PasswordMismatchException,MemberNotFoundException;
	//회원정보 수정
	public int updateMember(Member updateMember);
	//회원정보 수정--주소
	public int updateAddress(Member updateMember);
	//회원 삭제
	public int deleteMember(String member_id);
	//아이디 체크
	public int isExistMember(String member_id);
	
}
