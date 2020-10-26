package com.itwill.unishop.service.test;

import com.itwill.unishop.domain.Jumun_Detail;
import com.itwill.unishop.service.Jumun_DetailServiceImpl;

public class Jumun_DetailServiceTestMain {

	public static void main(String[] args) {
		
		Jumun_DetailServiceImpl jumun_DetailServiceImpl = new Jumun_DetailServiceImpl();
		
		System.out.println(jumun_DetailServiceImpl.insertJumunDetail(
				new Jumun_Detail(-9999, "PALACE", "L", 199000, "3", 4, "432733")));
		System.out.println(jumun_DetailServiceImpl.updateJumunDetail(
				new Jumun_Detail(-9999, "BAPE", "M", 120000, "2", 5, "433113")));
		System.out.println(jumun_DetailServiceImpl.selectAll());
		System.out.println(jumun_DetailServiceImpl.selectByNo(3));
		System.out.println(jumun_DetailServiceImpl.deleteJumunDetail(2));
		
	}

}
