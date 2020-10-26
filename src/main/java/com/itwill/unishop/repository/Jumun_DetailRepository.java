package com.itwill.unishop.repository;

import java.util.List;

import com.itwill.unishop.domain.Jumun_Detail;

public interface Jumun_DetailRepository {

	public int insertJumunDetail(Jumun_Detail jumun_Detail);
	
	public List<Jumun_Detail> selectAll();
	
	public List<Jumun_Detail> selectByNo(int jumun_no);
	
	public int updateJumunDetail(Jumun_Detail jumun_Detail);
	
	public int deleteJumunDetail(int jumun_d_no);
	
}
