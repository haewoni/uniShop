package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Address;

public interface AddressMapper {
	/*
	 * 인터페이스의 풀네임은 StudentMapper.xml의 namespace와일치
	 * 메쏘드이름은 	StudentMapper.xml 파일의 id와일치
	 * 메쏘드인자타입은 StudentMapper.xml 파일의 parameterType 와일치
	 * 메쏘드리턴타입은 StudentMapper.xml 파일의 resultType 와일치
	 */
	public List<Address> selectAll();
	/*
	 <select id="selectAll" resultType="com.itwill.unishop.domain.Address">
		SELECT * FROM GUEST
	</select>
	*/
	public Address selectByNo(Integer address_no);
	/*
	<select id="selectByNo" 
			parameterType="java.lang.Integer" 
			resultType="com.itwill.unishop.domain.Address">
		SELECT * FROM GUEST
		WHERE guest_no=#{guest_no}
	</select>
	*/
	public int insertAddress(Address address);
	/*
	<insert id="insertGuest" parameterType="com.itwill.unishop.domain.Address">
		<selectKey resultType="java.lang.Integer"
			keyProperty="guest_no" order="BEFORE">
			SELECT guest_no_seq.nextval FROM DUAL
		</selectKey>
		insert into guest 
		values( #{guest_no},#{guest_name},
		 		sysdate,#{guest_email},
		 		#{guest_homepage},#{guest_title},
		 		#{guest_content})
	</insert>
	*/
	public int deleteAddress(int address_no);
	/*
	<delete id="deleteGuest" parameterType="java.lang.Integer">
		delete from guest where guest_no = #{guest_no}
	</delete>
	*/
	public int updateAddress(Address address);
	/*
	<update id="updateGuest" parameterType="com.itwill.unishop.domain.Address">
		update guest set  guest_name=#{guest_name}, guest_email=#{guest_email},
		                  guest_homepage=#{guest_homepage}, guest_title=#{guest_title}, 
		                  guest_content=#{guest_content} 
		where guest_no = #{guest_no}
	</update>
	 */
}
