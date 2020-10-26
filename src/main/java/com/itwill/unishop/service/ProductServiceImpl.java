package com.itwill.unishop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.unishop.repository.MemberRepository;
import com.itwill.unishop.repository.ProductRepository;

@Service
public class ProductServiceImpl implements MemberService{
	@Autowired
	private ProductRepository productRepository;
	
	
}
