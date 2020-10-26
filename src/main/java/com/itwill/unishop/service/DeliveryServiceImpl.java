package com.itwill.unishop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.repository.DeliveryRepository;

@Service
public class DeliveryServiceImpl implements DeliveryService{
	@Autowired
	private DeliveryRepository deliveryRepository;

	@Override
	public int insertDelivery(Delivery delivery) {
		return deliveryRepository.insertDelivery(delivery);
	}

	@Override
	public int updateDelivery(Delivery delivery) {
		return deliveryRepository.updateDelivery(delivery);
	}

	@Override
	public int deleteDelivery(String delivery_no) {
		return deliveryRepository.deleteDelivery(delivery_no);
	}

	@Override
	public Delivery selectByNo(String delivery_no) {
		return deliveryRepository.selectByNo(delivery_no);
	}

	@Override
	public ArrayList<Delivery> selectAll() {
		return deliveryRepository.selectAll();
	}

}
