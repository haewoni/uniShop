package com.itwill.unishop.mapper;

import java.util.ArrayList;

import com.itwill.unishop.domain.Jumun;

public interface JumunMapper {
	
	public int insertJumun(Jumun jumun);
	
	public ArrayList<Jumun> selectAll();
	
	public Jumun selectById(String member_id);
	
	public int updateJumunByNo(Jumun jumun);
	
	public int deleteJumunByNo(Integer jumun_no);
	
}
