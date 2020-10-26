package com.itwill.unishop.service;

import java.util.ArrayList;

import com.itwill.unishop.domain.Delivery;

public interface DeliveryService {
	/*
	 * 배달 종류 추가
	 */
	public int insertDelivery(Delivery delivery);
	/*
	 * 배달 종류 수정
	 */
	public int updateDelivery(Delivery delivery);
	/*
	 * 배달 종류 삭제
	 */
	public int deleteDelivery(String delivery_no);
	/*
	 * 배달 하나만 찾기
	 */
	public Delivery selectByNo(String delivery_no);
	/*
	 * 배달 모두 찾기
	 */
	public ArrayList<Delivery> selectAll();
}
