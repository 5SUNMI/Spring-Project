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

import com.example.project.service.ContactService;
import com.example.project.vo.ContactVO;
import com.example.project.vo.Criteria;
import com.example.project.vo.PageMakerVO;

@Controller // 빈 등록
public class ContactController {

	@Inject
	private ContactService contactService;
	
	// 게시글 작성 폼
	@RequestMapping("contact/contact_write")
	public String write() {
		return "contact/contact_write"; 
	}
	
	// 게시글 작성
	@RequestMapping("contact/contact_insert")
	public String insert(@ModelAttribute ContactVO vo) {
		contactService.create(vo);
		return "redirect:/contact/contact_list";
	}
/*	
	// 전체 목록
	@RequestMapping("contact/contact_list")
	public ModelAndView list() {
		List<ContactVO> list = contactService.listAll();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("contact/contact_list");
		
		return mav;
	}
	
	// 전체 목록 + 검색
	@RequestMapping("contact/contact_list")
	public ModelAndView list(@RequestParam(defaultValue="title") String searchOption,
								@RequestParam(defaultValue="") String keyword) {
		List<ContactVO> list = contactService.listAll(searchOption, keyword);
		int count = contactService.countArticle(searchOption, keyword);
				
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		map.put("count", count);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.setViewName("contact/contact_list");
		
		return mav;
	}
*/	
	// 전체 목록 + 검색 + 페이징
	@RequestMapping("contact/contact_list")
	public ModelAndView list(@RequestParam(defaultValue="") String searchOption,
								@RequestParam(defaultValue="") String keyword,
								Criteria cri) {
		List<ContactVO> list = contactService.listAll(searchOption, keyword, cri);
		int count = contactService.countArticle(searchOption, keyword);
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		
		PageMakerVO pageMake = new PageMakerVO(cri, count);
		
		map.put("list", list);
		map.put("count", count);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.addObject("pageMaker", pageMake);
		mav.setViewName("contact/contact_list");
		
		return mav;
	}
	
	// 게시글 상세 보기
	@RequestMapping("contact/contact_view")
	public ModelAndView view(int bno, HttpSession session) {
		contactService.increaseViewcnt(bno, session); // 조회수 증가
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", contactService.read(bno));
		mav.setViewName("contact/contact_view");
		
		return mav;
	}
	
	// 게시글 수정
	@RequestMapping("contact/contact_update")
	public String update(@ModelAttribute ContactVO vo) {
		contactService.update(vo);
		return "redirect:/contact/contact_list";
	}
	
	// 게시글 삭제
	@RequestMapping("contact/contact_delete")
	public String delete(int bno) {
		contactService.delete(bno);
		return "redirect:/contact/contact_list";
	}
	
	
}
