package com.itwill.unishop.service;

import java.util.List;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Jumun_Detail;

public interface JumunService {
	
	/*
	 	주문 추가
	 */
	public int insertJumun(Jumun jumun);
	/*
	 	주문 전체목록 찾기
	 */
	public List<Jumun> selectAll();
	/*
	 	아이디를 인자로 받아 해당 아이디의 주문목록 찾기
	 */
	public List<Jumun> selectById(String member_id);
	/*
	 *  주문, 주문 디테일 조인
	 */
	public List<Jumun_Detail> selectJoinById(String member_id);
	/*
	 	jumun_no와 member_id 를 동시에 만족한다면 주문 update
	 */
	public int updateJumun(Jumun jumun);
	/*
 	card 정보 주문 update
	 */
	public int updateJumunCard(Jumun jumun);
	/*
	 	인자로 받은 jumun_no를 jumun에서 지워버렷
	 */
	public int deleteJumunByNo(int jumun_no);
	
}
