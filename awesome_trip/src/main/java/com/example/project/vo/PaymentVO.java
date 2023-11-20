package com.example.project.vo;


public class PaymentVO {
	
	private int bno;
	private String name;
	private String phone;
	private String card_num;
	private String cvc;
	private String card_pw;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCard_num() {
		return card_num;
	}
	public void setCard_num(String card_num) {
		this.card_num = card_num;
	}
	public String getCvc() {
		return cvc;
	}
	public void setCvc(String cvc) {
		this.cvc = cvc;
	}
	public String getCard_pw() {
		return card_pw;
	}
	public void setCard_pw(String card_pw) {
		this.card_pw = card_pw;
	}
	@Override
	public String toString() {
		return "PaymentVO [name=" + name + ", phone=" + phone + ", card_num=" + card_num + ", cvc=" + cvc + ", card_pw="
				+ card_pw + "]";
	}

	
}
