package com.itwill.unishop.repository;

import java.util.ArrayList;

import com.itwill.unishop.domain.Address;

public interface AddressRepository {
	
	public ArrayList<Address> selectAll(String address_no);
	
	public Address selectByNo(String address_no);
	
	public int insertAddress(Address address);
	
	public int deleteAddress(String address_no);
	
	public int updateAddress(Address updateaddress);
}
