package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Jumun_Detail;

public interface JumunMapper {
	
	public int insertJumun(Jumun jumun);
	
	public int selectJumunNo(Jumun jumun);
	
	public List<Jumun> selectAll();
	
	public List<Jumun> selectById(String member_id);
	
	public List<Jumun_Detail> selectJoinById(String member_id);
	
	public int updateJumun(Jumun jumun);
	
	public int updateJumunCard(Jumun jumun);
	
	public int deleteJumunByNo(int jumun_no);
	
}
