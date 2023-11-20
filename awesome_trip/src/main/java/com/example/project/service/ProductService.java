package com.example.project.service;

import java.util.List;

import com.example.project.vo.ProductVO;

public interface ProductService {

	// 글 상세보기
	public ProductVO read(int bno);
	
	// 글 전체 목록 + 검색
	public List<ProductVO> listAll(String searchOption, String keyword);
	
	// 글 전체 레코드 개수
	public int countArticle(String searchOption, String keyword);
}
