package com.itwill.unishop.repository;

import java.util.ArrayList;

import com.itwill.unishop.domain.Jumun;

public interface JumunRepository {
	
	public int insertJumun(Jumun jumun);
	
	public ArrayList<Jumun> selectAll();
	
	public Jumun selectById(String member_id);
	
	public int updateJumun(Jumun jumun);
	
	public int deleteJumunByNo(int jumun_no);
	
}
