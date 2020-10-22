package com.itwill.unishop.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSessionFactory;

import com.itwill.unishop.domain.Delivery;

public class DeliveryRepositoryImpl implements DeliveryRepository{
	
	public final static String NAMESPACE = "com.itwill.unishop.mapper.DeliveryMapper.";
	
	public DeliveryRepositoryImpl() throws Exception{
		
	}
	
	@Override
	public int insertDelivery(Delivery delivery) {
		
		return 0;
	}
	@Override
	public int updateDelivery(String delivery_no) {
		
		return 0;
	}
	@Override
	public int deleteDelivery(String delivery_no) {
		
		return 0;
	}
	@Override
	public Delivery selectByNo(String delivery_no) {
		
		return null;
	}
	@Override
	public ArrayList<Delivery> selectAll() {
		
		return null;
	}

	
}
