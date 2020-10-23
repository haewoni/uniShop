package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Jumun_Detail;

public interface Jumun_DetailMapper {

	public int insertJumunDetail(Jumun_Detail jumun_Detail);
	
	public List<Jumun_Detail> selectAll();
	
	public Jumun_Detail selectByNo(int jumun_no);
	
	public int updateJumunDetail(Jumun_Detail jumun_Detail);
	
	public int deleteJumunDetail(int jumun_d_no);
}
