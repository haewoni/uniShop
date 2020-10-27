package com.itwill.unishop.service.test;

import org.springframework.context.ApplicationContext;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Member;
import com.itwill.unishop.exception.ExistedMemberException;
import com.itwill.unishop.service.MemberService;

public class MemberServiceTestMain {
	public static void main(String[] args) throws Exception,ExistedMemberException {
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("spring/application-config.xml");
		MemberService memberService=(MemberService)applicationContext.getBean("memberServiceImpl");
		
		//id uni1조회 확인
		//System.out.println(memberService.selectMemberById("uni1"));
		
		//회원주소검색 확인
		//System.out.println(memberService.selectAddressById("uni1"));
		
		/* 존재하는 아이디 확인
		Member testMember = new Member("uni1", "1234", "강슬기", "01012345678", "kang@naver.com", null, null, null, null, null, null);
		System.out.println(memberService.insertMember(testMember));
		*/
		/*계정 생성완료
		Member testMember = new Member("uni5", "1234", "강슬기", "01012345678", "kang@naver.com", null, null, null, null, null, null);
		System.out.println(memberService.insertMember(testMember));
		*/
		/* 업뎃확인
		Member testMember = memberService.selectMemberById("uni5");
		testMember.setMember_address_name("우리집");
		testMember.setMember_address_country("대한민국");
		testMember.setMember_address_city("서울");
		testMember.setMember_address_zipcode("123456");
		testMember.setMember_address1("서울특별시 동작구");
		testMember.setMember_address2("노량진동 노량진아파트 103동 103호");
		System.out.println(memberService.updateMember(testMember));
		*/
		
		//회원 로그인(비밀번호 불일치)
		//System.out.println(memberService.loginMember("uni5", "1243"));
		//회원 로그인(아이디 존재 안함)
		//System.out.println(memberService.loginMember("uni6", "1234"));
		//회원 로그인 확인
		//System.out.println(memberService.loginMember("uni5", "1234"));
	}
	
}
