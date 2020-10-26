package com.itwill.unishop.service.test;

import java.util.Date;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.service.JumunServiceImpl;

public class JumunServiceTestMain {

	public static void main(String[] args) {
		
		JumunServiceImpl jumunServiceImpl = new JumunServiceImpl();
		
		System.out.println(jumunServiceImpl.insertJumun(
				new Jumun(-9999, new Date(), "waiting", 88800, "1234 5678 9876 5432", "10/10", "333", "정수환", "uni4", "GEN")));
		Jumun jumun = new Jumun(-9999, new Date(), "canceled", 15151, "9876 5432 1098 7654", "12/31", "444", "정솬솬", "uni5", "EX");
		System.out.println(jumunServiceImpl.updateJumun(jumun));
		System.out.println(jumunServiceImpl.selectAll());
		System.out.println(jumunServiceImpl.selectById("uni3"));
		System.out.println(jumunServiceImpl.deleteJumunByNo(5));
	}

}
