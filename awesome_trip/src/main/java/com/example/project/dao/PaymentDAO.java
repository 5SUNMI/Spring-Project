package com.example.project.dao;

import com.example.project.vo.PaymentVO;

public interface PaymentDAO {
	
	public boolean paymentCheck(PaymentVO vo);
	
	public int insertpayment(PaymentVO vo);
	
	public PaymentVO read(int bno);

}
