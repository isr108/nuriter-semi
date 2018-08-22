package com.kh.nuriter.nuriter.model.vo;

import java.sql.Date;

public class Nuriter implements java.io.Serializable{
	private String nuriNum; //누리터 번호
    private String ownerNum; //누리장 번호(회원번호)
    private String categoryNum; //카테고리ID
    private String nuriTitle; //누리터 이름
    private Date startDate; //시작 날짜
    private Date endDate; //종료 날짜
    private String startTime; //시작시간
    private String endTime;//종료시간
    private String place; //장소
    private String content;//내용
    private String price; //가격
    private Date applicationDate; //누리터 개설일
    
    public Nuriter() {}
    
	public Nuriter(String nuriNum, String ownerNum, String categoryNum, String nuriTitle, Date startDate, Date endDate,
			String startTime, String endTime, String place, String content, String price, Date applicationDate) {
		super();
		this.nuriNum = nuriNum;
		this.ownerNum = ownerNum;
		this.categoryNum = categoryNum;
		this.nuriTitle = nuriTitle;
		this.startDate = startDate;
		this.endDate = endDate;
		this.startTime = startTime;
		this.endTime = endTime;
		this.place = place;
		this.content = content;
		this.price = price;
		this.applicationDate = applicationDate;
	}

	public String getNuriNum() {
		return nuriNum;
	}

	public void setNuriNum(String nuriNum) {
		this.nuriNum = nuriNum;
	}

	public String getOwnerNum() {
		return ownerNum;
	}

	public void setOwnerNum(String ownerNum) {
		this.ownerNum = ownerNum;
	}

	public String getCategoryNum() {
		return categoryNum;
	}

	public void setCategoryNum(String categoryNum) {
		this.categoryNum = categoryNum;
	}

	public String getNuriTitle() {
		return nuriTitle;
	}

	public void setNuriTitle(String nuriTitle) {
		this.nuriTitle = nuriTitle;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Date getApplicationDate() {
		return applicationDate;
	}

	public void setApplicationDate(Date applicationDate) {
		this.applicationDate = applicationDate;
	}

	@Override
	public String toString() {
		return "Nuriter [nuriNum=" + nuriNum + ", ownerNum=" + ownerNum + ", categoryNum=" + categoryNum
				+ ", nuriTitle=" + nuriTitle + ", startDate=" + startDate + ", endDate=" + endDate + ", startTime="
				+ startTime + ", endTime=" + endTime + ", place=" + place + ", content=" + content + ", price=" + price
				+ ", applicationDate=" + applicationDate + "]";
	}
    
}
