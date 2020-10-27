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
		//System.out.println(memberRepository.deleteMember("jongjong"));
		//System.out.println(memberRepository.selectMemberById("uni1"));	
		System.out.println(memberRepository.loginMember("uni1", "1111"));
	}

}
