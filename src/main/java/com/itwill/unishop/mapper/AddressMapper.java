package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Address;

public interface AddressMapper {

	public List<Address> selectAll();
	
	public Address selectByNo(String address_no);
	
	public int insertAddress(Address address);
	
	public int deleteAddress(String address_no);
	
	public int updateAddress(String address_no);

}
