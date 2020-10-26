package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Jumun;

public interface JumunMapper {
	
	public int insertJumun(Jumun jumun);
	
	public List<Jumun> selectAll();
	
	public List<Jumun> selectById(String member_id);
	
	public int updateJumun(Jumun jumun);
	
	public int deleteJumunByNo(int jumun_no);
	
}
