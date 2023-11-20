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

import com.example.project.service.LoginService;
import com.example.project.service.ProductService;
import com.example.project.vo.MemberVO;
import com.example.project.vo.ProductVO;

@Controller
public class LoginController {

	@Inject
	private ProductService productService;
	
	@Inject
	private LoginService loginService;
	
	// 로그인 폼
	@RequestMapping("/login/login")
	public String login() {
		return "/login/login";
	}
	
	// 로그인 처리
	@RequestMapping("/login/loginCheck")
	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session) {
		boolean result = loginService.loginCheck(vo, session);
		ModelAndView mav = new ModelAndView();
		if(result) {
		//	mav.addObject("msg", "성공");
			mav.setViewName("/home");
		}else {
			//mav.addObject("msg", "실패");
			mav.setViewName("/home");
		}
		return mav;
	}
	
	// 로그아웃
	@RequestMapping("/login/logout")
	public ModelAndView logout(@ModelAttribute MemberVO vo, HttpSession session,
			@RequestParam(defaultValue="all") String searchOption,
			@RequestParam(defaultValue="") String keyword) {
		
		List<ProductVO> list = productService.listAll(searchOption, keyword);
		int count = productService.countArticle(searchOption, keyword);
				
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
	
		loginService.logout(session);

		map.put("list", list);
		map.put("count", count);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.setViewName("/home");
		
		//mav.addObject("msg", "logout");
		return mav;
	}
}
