package com.itwill.unishop.mapper;

import java.util.List;

import com.itwill.unishop.domain.Question;

public interface QuestionMapper {
	/*
	 * 인터페이스의 풀네임은 StudentMapper.xml의 namespace와일치
	 * 메쏘드이름은 	StudentMapper.xml 파일의 id와일치
	 * 메쏘드인자타입은 StudentMapper.xml 파일의 parameterType 와일치
	 * 메쏘드리턴타입은 StudentMapper.xml 파일의 resultType 와일치
	 */
	public List<Question> selectAll();
	/*
	 <select id="selectAll" resultType="com.itwill.unishop.domain.Question">
		SELECT * FROM GUEST
	</select>
	*/
	public Question selectByNo(Integer question_no);
	/*
	<select id="selectByNo" 
			parameterType="java.lang.Integer" 
			resultType="com.itwill.unishop.domain.Question">
		SELECT * FROM GUEST
		WHERE guest_no=#{guest_no}
	</select>
	*/
	public int insertQuestion(Question question);
	/*
	<insert id="insertGuest" parameterType="com.itwill.unishop.domain.Question">
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
	public int deleteQuestion(int question_no);
	/*
	<delete id="deleteGuest" parameterType="java.lang.Integer">
		delete from guest where guest_no = #{guest_no}
	</delete>
	*/
	public int updateQuestion(Question question);
	/*
	<update id="updateGuest" parameterType="com.itwill.unishop.domain.Question">
		update guest set  guest_name=#{guest_name}, guest_email=#{guest_email},
		                  guest_homepage=#{guest_homepage}, guest_title=#{guest_title}, 
		                  guest_content=#{guest_content} 
		where guest_no = #{guest_no}
	</update>
	 */
}
