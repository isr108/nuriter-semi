package com.kh.nuriter.nuriter.model.vo;

import java.sql.Date;

public class Nuriter implements java.io.Serializable{
	private String nuriNum; //누리터 번호
    private String ownerNum; //누리장 번호(회원번호)
    private String categoryNum; //카테고리ID
    private String nuriTitle; //누리터 이름
    private String content;//내용
    private Date startDate; //시작 날짜
    private Date endDate; //종료 날짜
    private String startTime; //시작시간
    private String endTime;//종료시간
    private String place; //장소
    private String price; //가격
    private Date applicationDate; //누리터 개설일
    private String personnel; //총원
    private int reportCount; //신고횟수
    private String progress; //누리터 상태
    private int attendCount; //총출석일수
    private String NickName; //닉네임
    
    public Nuriter() {}
    
	public Nuriter(String nuriNum, String ownerNum, String categoryNum, String nuriTitle, String content,
			Date startDate, Date endDate, String startTime, String endTime, String place, String price,
			Date applicationDate, String personnel, int reportCount, String progress, 
			int attendCount, String NickName) {
		super();
		this.nuriNum = nuriNum;
		this.ownerNum = ownerNum;
		this.categoryNum = categoryNum;
		this.nuriTitle = nuriTitle;
		this.content = content;
		this.startDate = startDate;
		this.endDate = endDate;
		this.startTime = startTime;
		this.endTime = endTime;
		this.place = place;
		this.price = price;
		this.applicationDate = applicationDate;
		this.personnel = personnel;
		this.reportCount = reportCount;
		this.progress = progress;
		this.attendCount = attendCount;
		this.NickName = NickName;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public String getPersonnel() {
		return personnel;
	}

	public void setPersonnel(String personnel) {
		this.personnel = personnel;
	}

	public int getReportCount() {
		return reportCount;
	}

	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}

	public int getAttendCount() {
		return attendCount;
	}

	public void setAttendCount(int attendCount) {
		this.attendCount = attendCount;
	}
	
	public String getNickName() {
		return NickName;
	}

	public void setNickName(String nickName) {
		NickName = nickName;
	}

	@Override
	public String toString() {
		return "Nuriter [nuriNum=" + nuriNum + ", ownerNum=" + ownerNum + ", categoryNum=" + categoryNum
				+ ", nuriTitle=" + nuriTitle + ", content=" + content + ", startDate=" + startDate + ", endDate="
				+ endDate + ", startTime=" + startTime + ", endTime=" + endTime + ", place=" + place + ", price="
				+ price + ", applicationDate=" + applicationDate + ", personnel=" + personnel + ", reportCount="
				+ reportCount + ", progress=" + progress +  ", attendCount=" + attendCount + ", NickName=" + NickName + "]";
	}
        
}
