package com.kh.nuriter.payment.model.vo;

public class Payment {
	private String pId; //결제아이디
	private String userNum;//회원번호
	private String nuriNum;//누리터 번호
	
	public Payment(){}

	public Payment(String pId, String userNum, String nuriNum) {
		super();
		this.pId = pId;
		this.userNum = userNum;
		this.nuriNum = nuriNum;
	}

	public String getpId() {
		return pId;
	}

	//
	public String getUserNum() {
		return userNum;
	}

	public String getNuriNum() {
		return nuriNum;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public void setUserNum(String userNum) {
		this.userNum = userNum;
	}

	public void setNuriNum(String nuriNum) {
		this.nuriNum = nuriNum;
	}

	@Override
	public String toString() {
		return "Payment [pId=" + pId + ", userNum=" + userNum + ", nuriNum=" + nuriNum + "]";
	}
	
	
	
	
	
	
	
	
}
