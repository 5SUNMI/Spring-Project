package com.example.project.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.project.vo.Criteria;
import com.example.project.vo.ReviewVO;

public interface ReviewService {

	// 글쓰기
	public void create(ReviewVO vo);

	// 글 상세보기
	public ReviewVO read(int bno);

	// 글 수정
	public void update(ReviewVO vo);

	// 글 삭제
	public void delete(int bno);

	// 글 전체 목록
	//public List<ReviewVO> listAll();

	// 글 전체 목록 + 검색
	//public List<ReviewVO> listAll(String searchOption, String keyword);
	
	// 글 전체 목록 + 검색 + 페이징
	public List<ReviewVO> listAll(String searchOption, String keyword, Criteria cri);

	// 글 전체 레코드 개수
	public int countArticle(String searchOption, String keyword);

	// 조회수 증가
	public void increaseViewcnt(int bno, HttpSession session);
}
