package com.example.project;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
public class HomeController {
	
	@Inject
	private ProductService productService;
	
	@Inject
	private LoginService loginService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/*
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
*/	
		// 전체 목록 + 검색
		@RequestMapping("/")
		public ModelAndView list(@ModelAttribute MemberVO vo, HttpSession session,
									@RequestParam(defaultValue="all") String searchOption,
									@RequestParam(defaultValue="") String keyword) {
			List<ProductVO> list = productService.listAll(searchOption, keyword);
			int count = productService.countArticle(searchOption, keyword);
					
			ModelAndView mav = new ModelAndView();
			Map<String, Object> map = new HashMap<String, Object>();
			
			session.setAttribute("msg", loginService.loginCheck(vo, session));
			
			map.put("list", list);
			map.put("count", count);
			map.put("searchOption", searchOption);
			map.put("keyword", keyword);
			
			mav.addObject("map", map);
			mav.setViewName("home");
			
			return mav;
		}
		
		// 여행지 상세 보기
		@RequestMapping("/product/product")
		public ModelAndView view(int bno, HttpSession session,
				@RequestParam(defaultValue="") String imgName) {
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("dto", productService.read(bno));
			//mav.addObject("imgName", imgName);
			mav.setViewName("product/product");
			
			return mav;
		}

}
