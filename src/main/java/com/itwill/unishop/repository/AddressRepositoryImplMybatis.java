package com.itwill.unishop.repository;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.unishop.domain.Address;
import com.itwill.unishop.mapper.AddressMapper;
import com.itwill.unishop.mapper.QuestionMapper;

public class AddressRepositoryImplMybatis implements AddressRepository{

	private SqlSessionFactory sqlSessionFactory;
	
	public AddressRepositoryImplMybatis() {
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream("mybatis-config.xml");
			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public ArrayList<Address> selectAll(String address_no) {
		ArrayList<Address> addressList1 = new ArrayList<Address>();
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		AddressMapper addressMapper = sqlSession.getMapper(AddressMapper.class);
		List<Address> addressList2 = addressMapper.selectAll(address_no);
		addressList1 = (ArrayList<Address>)addressList2;
		return addressList1;
	}
	
	@Override
	public Address selectByNo(String address_no) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		AddressMapper addressMapper = sqlSession.getMapper(AddressMapper.class);
		Address selectRowCount = addressMapper.selectByNo(address_no);
		return null;
	}

	@Override
	public int insertAddress(Address address) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		AddressMapper addressMapper = sqlSession.getMapper(AddressMapper.class);
		int insertRowCount = 0;
		insertRowCount = addressMapper.insertAddress(address);
		return insertRowCount;
	}

	@Override
	public int updateAddress(Address updateaddress) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int updateRowCount = 0;
		AddressMapper addressMapper = sqlSession.getMapper(AddressMapper.class);
		updateRowCount = addressMapper.updateAddress(updateaddress);
		return updateRowCount;
	}

	@Override
	public int deleteAddress(String address_no) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int deleteRowCount = 0;
		AddressMapper addressMapper = sqlSession.getMapper(AddressMapper.class);
		deleteRowCount = addressMapper.deleteAddress(address_no);
		return deleteRowCount;
	}



	
	
}
