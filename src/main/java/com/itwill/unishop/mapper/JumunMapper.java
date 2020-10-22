package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Jumun;

public interface JumunMapper {
	
	public int insertJumun(Jumun jumun);
	
	public List<Jumun> selectAll();
	
	public Jumun selectById(String member_id);
	
	public Jumun updateJumunByNo(Jumun jumun);
	
	public int deleteJumunByNo(Integer jumun_no);
	
}
