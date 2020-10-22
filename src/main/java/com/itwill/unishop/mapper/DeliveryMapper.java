package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Delivery;

public interface DeliveryMapper {
	
	public int insertDelivery(Delivery delivery);
	
	public int updateDelivery(String delivery_no);
	
	public int deleteDelivery(String delivery_no);
	
	public Delivery selectByNo(String delivery_no);
	
	public List<Delivery> selectAll();
}
