package com.example.project.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.project.dao.PaymentDAO;
import com.example.project.vo.PaymentVO;
import com.example.project.vo.ReviewVO;

@Service // bean 등록
public class PaymentServiceImpl implements PaymentService {


	@Inject
	private PaymentDAO paymentDao;
	
	@Override
	public boolean paymentCheck(PaymentVO vo) {
		return false;
	}

	@Override
	public int insertpayment(PaymentVO vo) {
		return paymentDao.insertpayment(vo);
	}

	@Override
	public PaymentVO read(int bno) {
		return paymentDao.read(bno);
	}


}
