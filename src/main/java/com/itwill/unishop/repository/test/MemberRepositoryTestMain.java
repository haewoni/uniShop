package com.itwill.unishop.repository.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.unishop.domain.Member;
import com.itwill.unishop.repository.MemberRepository;

public class MemberRepositoryTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("spring/application-config.xml");
		MemberRepository memberRepository=(MemberRepository)applicationContext.getBean("memberRepositoryImpl");
		//select
		//System.out.println(memberRepository.selectMemberById("uni1"));	
		//System.out.println(memberRepository.selectMemberById("uni2"));
		//System.out.println(memberRepository.selectMemberById("jongjong"));
		
		//insert
		//System.out.println(memberRepository.insertMember(new Member("jongjong","123456","이종호","010-9999-9999","qwer@gmail.com",null,null,null,null,null,null)));
		//System.out.println(memberRepository.insertMember(new Member("hoihoi","123456","이종호","010-7779-9089","qreq@gmail.com",null,null,null,null,null,null)));
		
		//update
		//Member member = new Member("jongjong","123456","이종호","010-9999-9999","qwer@gmail.com","집","집","집","집","집","집");
		//System.out.println(memberRepository.updateMember(new Member("jongjong","123456","이종호","010-9999-9999","qwer@gmail.com","집","12345","대한민국","서울","서울시 양천구 신목동","강서고 105호")));
		//Member update = memberRepository.updateMember(updateMember)
		//System.out.println(memberRepository.updateMember(member));
		//삭제
		//System.out.println(memberRepository.deleteMember("jongjong"));
		//System.out.println(memberRepository.selectMemberById("uni1"));
		//주소 찾아보기
		//System.out.println(memberRepository.selectAddressById("uni1"));
		//System.out.println(memberRepository.isExistMember("uni5"));
		Member member1 = memberRepository.selectMemberById("uni22");
//		System.out.println(member1);
//		member1.setMember_address_name("우리집");
//		member1.setMember_address_country("대한민국");
//		member1.setMember_address_city("서울");
//		member1.setMember_address_zipcode("123456");
//		member1.setMember_address1("양천 동서로 11");
//		member1.setMember_address2("101동 1001호");
//		System.out.println(memberRepository.updateAddress(member1));
//		System.out.println(member1);
		member1.setMember_email("uni234@gmail.com");
		memberRepository.updateMember(member1);
		System.out.println(member1);
		
	}

}
