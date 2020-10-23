package com.itwill.unishop.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.mapper.DeliveryMapper;

@Repository("deliveryRepository")
public class DeliveryRepositoryImpl implements DeliveryRepository{
	@Autowired
	private DeliveryMapper deliveryMapper;
	
	public DeliveryRepositoryImpl() throws Exception{
		
	}
	
	@Override
	public int insertDelivery(Delivery delivery) {
		int rowcount = deliveryMapper.insertDelivery(delivery);
		return rowcount;
	}
	@Override
	public int updateDelivery(Delivery delivery) {
		int rowcount = deliveryMapper.updateDelivery(delivery);
		return rowcount;
	}
	@Override
	public int deleteDelivery(String delivery_no) {
		int rowcount = deliveryMapper.deleteDelivery(delivery_no);
		return rowcount;
	}
	@Override
	public Delivery selectByNo(String delivery_no) {
		Delivery delivery = deliveryMapper.selectByNo(delivery_no);
		return delivery;
	}
	@Override
	public ArrayList<Delivery> selectAll() {
		List<Delivery> deliveryList2 = deliveryMapper.selectAll();
		ArrayList<Delivery> deliveryList1 = (ArrayList<Delivery>)deliveryList2;
		return deliveryList1;
	}

}
