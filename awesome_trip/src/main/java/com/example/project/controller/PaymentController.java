package com.example.project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.service.PaymentService;

import com.example.project.vo.PaymentVO;

@Controller
public class PaymentController {
	
	@Inject
	private PaymentService paymentService;
	
	@RequestMapping("/payment/payment")
		public ModelAndView payment(int bno, HttpSession session,
				@RequestParam(defaultValue="") String tourCategory,
				@RequestParam(defaultValue="") String title) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", paymentService.read(bno));
		mav.addObject("tourCategory",tourCategory);
		mav.addObject("title",title);
		mav.setViewName("payment/payment");
		
		return mav;
	}
		
	@RequestMapping("/payment/paymentCheck")
	public ModelAndView paymentCheck(@ModelAttribute PaymentVO vo, HttpSession session,
										@RequestParam String tourCategory,
										@RequestParam String title) {
		//boolean result = paymentService.paymentCheck(vo, session);
		int result = paymentService.insertpayment(vo);
		
		ModelAndView mav = new ModelAndView();
		if(result ==1) {
			mav.addObject("msg","결제성공");
			mav.addObject("tourCategory",tourCategory);
			mav.addObject("title",title);
			
			mav.setViewName("/payment/paid");
		}else {
			mav.addObject("msg","결제실패");
			mav.setViewName("/payment/payment");
		}
		return mav;
	}

}
