package com.itwill.unishop.repository;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.unishop.domain.Cart;
import com.itwill.unishop.mapper.CartMapper;

public class CartDaoImplMyBatisMapperInterface implements CartDao{

	private SqlSessionFactory sqlSessionFactory;
	
	public CartDaoImplMyBatisMapperInterface() {
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream("mybatis-config.xml");
			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public int insertCart(Cart cart) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		int insertRowCount = 0;
		insertRowCount = cartMapper.insertCart(cart);
		return insertRowCount;
	}

	@Override
	public ArrayList<Cart> selectAll(String member_id) throws Exception {
		ArrayList<Cart> cartList1 = new ArrayList<Cart>();
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		List<Cart> cartList2 = cartMapper.selectAll(member_id);
		cartList1 = (ArrayList<Cart>)cartList2;
		return cartList1;
	}

	@Override
	public int updateCart(Cart updateCart) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int updateRowCount = 0;
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		updateRowCount = cartMapper.updateCart(updateCart);
		return updateRowCount;
	}

	@Override
	public int deleteCart(int cart_no) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		int deleteRowCount = cartMapper.deleteCart(cart_no);
		return deleteRowCount;
	}

	
	
	
}
