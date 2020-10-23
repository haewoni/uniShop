package com.itwill.unishop.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.unishop.domain.Address;
import com.itwill.unishop.mapper.AddressMapper;

@Repository("addressRepository")
public class AddressRepositoryImpl implements AddressRepository{
	@Autowired
	private AddressMapper addressMapper;
	
	public AddressRepositoryImpl() {
		
	}
	
	@Override
	public ArrayList<Address> selectAll() {
		List<Address> addressList2 = addressMapper.selectAll();
		ArrayList<Address> addressList1 = (ArrayList<Address>)addressList2;
		return addressList1;
	}
	
	@Override
	public Address selectByNo(String address_no) {
		Address address = addressMapper.selectByNo(address_no);
		return address;
	}

	@Override
	public int insertAddress(Address address) {
		int rowcount = addressMapper.insertAddress(address);
		return rowcount;
	}

	@Override
	public int updateAddress(Address updateaddress) {
		int rowcount = addressMapper.updateAddress(updateaddress);
		return rowcount;
	}

	@Override
	public int deleteAddress(String address_no) {
		int rowcount = addressMapper.deleteAddress(address_no);
		return rowcount;
	}

}
