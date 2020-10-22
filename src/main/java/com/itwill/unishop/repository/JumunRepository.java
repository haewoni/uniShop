package com.itwill.unishop.repository;

import java.util.ArrayList;

import com.itwill.unishop.domain.Jumun;

public interface JumunRepository {
	
	public int insertJumun(Jumun jumun) throws Exception;
	
	public ArrayList<Jumun> selectAll() throws Exception;
	
	public Jumun selectById(String member_id) throws Exception;
	
	public Jumun updateJumunByNo(Jumun jumun) throws Exception;
	
	public int deleteJumunByNo(Integer jumun_no) throws Exception;
	
}
