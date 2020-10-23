package com.itwill.unishop.repository;

import java.io.InputStream;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.unishop.domain.Delivery;
import com.itwill.unishop.mapper.DeliveryMapper;

public class DeliveryRepositoryImpl implements DeliveryRepository{
	
	private SqlSessionFactory sqlSessionFactory;
	
	public DeliveryRepositoryImpl() throws Exception{
		InputStream in=null;
		try {
			in=Resources.getResourceAsStream("application-config.xml");
			this.sqlSessionFactory = 
					new SqlSessionFactoryBuilder()
					.build(in);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public int insertDelivery(Delivery delivery) {
		int rowcount = 0;
		rowcount = sqlSessionFactory.openSession(true).getMapper(DeliveryMapper.class).insertDelivery(delivery);
		return rowcount;
	}
	@Override
	public int updateDelivery(String delivery_no) {
		int rowcount = 0;
		rowcount = sqlSessionFactory.openSession(true).getMapper(DeliveryMapper.class).updateDelivery(delivery_no);
		return rowcount;
	}
	@Override
	public int deleteDelivery(String delivery_no) {
		int rowcount = 0;
		rowcount = sqlSessionFactory.openSession(true).getMapper(DeliveryMapper.class).deleteDelivery(delivery_no);
		return rowcount;
	}
	@Override
	public Delivery selectByNo(String delivery_no) {
		Delivery delivery = new Delivery();
		delivery = sqlSessionFactory.openSession(true).getMapper(DeliveryMapper.class).selectByNo(delivery_no);
		return delivery;
	}
	@Override
	public ArrayList<Delivery> selectAll() {
		ArrayList<Delivery> deliveryList = new ArrayList<Delivery>();
		deliveryList = (ArrayList<Delivery>) sqlSessionFactory.openSession(true).getMapper(DeliveryMapper.class).selectAll();
		return deliveryList;
	}

	
}
