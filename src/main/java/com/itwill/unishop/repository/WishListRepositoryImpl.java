package com.itwill.unishop.repository;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.unishop.domain.Review;
import com.itwill.unishop.domain.WishList;
import com.itwill.unishop.mapper.ReviewMapper;
import com.itwill.unishop.mapper.WishListMapper;

public class WishListRepositoryImpl {

	private SqlSessionFactory sqlSessionFactory;
	
	public WishListRepositoryImpl() {
		InputStream in = null;
		
		try {
			in = Resources.getResourceAsStream("mybatis-config.xml");
			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertWishList(WishList wishList) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		WishListMapper wishListMapper = sqlSession.getMapper(WishListMapper.class);
		int insertCount = 0;
		insertCount = wishListMapper.insertWishList(wishList);
		return insertCount;
	};
	
	public WishList selectWishListByNo(int no) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		WishListMapper wishListMapper = sqlSession.getMapper(WishListMapper.class);
		WishList wishListOne = wishListMapper.selectWishListByNo(no);
		return wishListOne;
	};
	
	public ArrayList<WishList> selectWishListAll() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		WishListMapper wishListMapper = sqlSession.getMapper(WishListMapper.class);
		ArrayList<WishList> wishList = (ArrayList<WishList>)wishListMapper.selectWishListAll();
		return wishList;
	};
	
	public int updateWishListById(WishList wishList) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		WishListMapper wishListMapper = sqlSession.getMapper( WishListMapper.class);
		int updateCount = wishListMapper.updateWishListById(wishList);
		return updateCount;
	};
	
	public int deleteWishListById(int no) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		WishListMapper wishListMapper = sqlSession.getMapper( WishListMapper.class);
		int deleteCount = wishListMapper.deleteWishListById(no);
		return deleteCount;
	};
}
