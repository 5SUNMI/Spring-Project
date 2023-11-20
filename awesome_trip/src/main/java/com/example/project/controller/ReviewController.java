package com.example.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.service.ProductService;
import com.example.project.service.ReviewService;
import com.example.project.vo.Criteria;
import com.example.project.vo.PageMakerVO;
import com.example.project.vo.ProductVO;
import com.example.project.vo.ReviewVO;

@Controller // 빈 등록
public class ReviewController {

	@Inject
	private ReviewService reviewService;
	
	@Inject
	private ProductService productService;
	
	// 게시글 작성 폼
	@RequestMapping("review/review_write")
	public ModelAndView write(@RequestParam(defaultValue="all") String searchOption,
			@RequestParam(defaultValue="") String keyword) {
		List<ProductVO> list = productService.listAll(searchOption, keyword);
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		
		mav.addObject("map", map);
		mav.setViewName("review/review_write");
		
		return mav;
	}
	
	// 게시글 작성
	@RequestMapping("review/review_insert")
	public String insert(@ModelAttribute ReviewVO vo) {
		reviewService.create(vo);
		return "redirect:/review/review_list";
	}
/*	
	// 전체 목록
	@RequestMapping("review/review_list")
	public ModelAndView list() {
		List<ReviewVO> list = reviewService.listAll();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("review/review_list");
		
		return mav;
	}
	
	// 전체 목록 + 검색
	@RequestMapping("review/review_list")
	public ModelAndView list(@RequestParam(defaultValue="title") String searchOption,
								@RequestParam(defaultValue="") String keyword) {
		List<ReviewVO> list = reviewService.listAll(searchOption, keyword);
		int count = reviewService.countArticle(searchOption, keyword);
				
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		map.put("count", count);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.setViewName("review/review_list");
		
		return mav;
	}
*/	
	// 전체 목록 + 검색 + 페이징
	@RequestMapping("review/review_list")
	public ModelAndView list(@RequestParam(defaultValue="") String searchOption,
								@RequestParam(defaultValue="") String keyword,
								Criteria cri) {
		List<ReviewVO> list = reviewService.listAll(searchOption, keyword, cri);
		int count = reviewService.countArticle(searchOption, keyword);
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		
		PageMakerVO pageMake = new PageMakerVO(cri, count);
		
		map.put("list", list);
		map.put("count", count);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.addObject("pageMaker", pageMake);
		mav.setViewName("review/review_list");
		
		return mav;
	}
	
	// 게시글 상세 보기
	@RequestMapping("review/review_view")
	public ModelAndView view(int bno, HttpSession session) {
		reviewService.increaseViewcnt(bno, session); // 조회수 증가
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", reviewService.read(bno));
		mav.setViewName("review/review_view");
		
		return mav;
	}
	
	// 게시글 수정
	@RequestMapping("review/review_update")
	public String update(@ModelAttribute ReviewVO vo) {
		reviewService.update(vo);
		return "redirect:/review/review_list";
	}
	
	// 게시글 삭제
	@RequestMapping("review/review_delete")
	public String delete(int bno) {
		reviewService.delete(bno);
		return "redirect:/review/review_list";
	}
	
	
}
