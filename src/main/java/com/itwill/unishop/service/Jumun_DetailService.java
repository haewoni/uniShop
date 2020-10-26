package com.itwill.unishop.service;

import java.util.List;

import com.itwill.unishop.domain.Jumun_Detail;

public interface Jumun_DetailService {
	
	/*
	 	주문디테일 추가
	 */
	public int insertJumunDetail(Jumun_Detail jumun_Detail);
	
	/*
	 	주문디테일 전체목록 찾기
	 */
	public List<Jumun_Detail> selectAll();
	
	/*
	 	인자로 받은 jumun_no 가 가지고 있는 주문디테일 목록 찾기
	 */
	public List<Jumun_Detail> selectByNo(int jumun_no);
	
	/*
	 	jumun_no가 가지고 있는 product_no 가 동일하다면 주문디테일 정보 update
	 */
	public int updateJumunDetail(Jumun_Detail jumun_Detail);
	
	/*
	 	인자로 받은 jumun_d_no를 주문디테일에서 지워버렷
	 */
	public int deleteJumunDetail(int jumun_d_no);
	
}
