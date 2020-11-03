package com.itwill.unishop.repository;

import java.util.List;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Jumun_Detail;

public interface JumunRepository {
	
	public int insertJumun(Jumun jumun);
	
	public List<Jumun> selectAll();
	
	public List<Jumun> selectById(String member_id);
	
	public List<Jumun_Detail> selectJoinById(String member_id);
	
	public int updateJumun(Jumun jumun);
	
	public int updateJumunCard(Jumun jumun);
	
	public int deleteJumunByNo(int jumun_no);
	
}
