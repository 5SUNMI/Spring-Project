package com.example.project.service;

import org.springframework.stereotype.Service;

import com.example.project.vo.PaymentVO;
import com.example.project.vo.ReviewVO;

@Service
public interface PaymentService {

	public boolean paymentCheck(PaymentVO vo);

	public int insertpayment(PaymentVO vo);

	public PaymentVO read(int bno);
}
