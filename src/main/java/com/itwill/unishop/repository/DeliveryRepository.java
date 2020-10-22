package com.itwill.unishop.repository;

import java.util.ArrayList;

import com.itwill.unishop.domain.Delivery;

public interface DeliveryRepository {
	
	public int insertDelivery(Delivery delivery);
	
	public int updateDelivery(String delivery_no);
	
	public int deleteDelivery(String delivery_no);
	
	public Delivery selectByNo(String delivery_no);
	
	public ArrayList<Delivery> selectAll();
}
