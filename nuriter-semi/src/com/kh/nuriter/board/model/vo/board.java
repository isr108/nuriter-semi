package com.kh.nuriter.board.model.vo;

import java.sql.Date;

public class board implements java.io.Serializable {
	private String boardNum; //게시판 번호
	private String boardTitle; //게시글 제목
	private String boardContent;//게시글 내용
	private String userNum;//사용자넘버
	private int boardCount; //조회수
	private Date boardDate;//게시글 작성일시
	private String boardSort;//게시판 종류
	private String reportNum; //신고 대상자 번호
	private String nuriNum; //누리터 번호
	private String status; //게시판 상태
	
	
	
	public board(){}


	public board(String boardNum, String boardTitle, String boardContent, String userNum, int boardCount,
			Date boardDate, String boardSort, String reportNum, String nuriNum, String status) {
		super();
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.userNum = userNum;
		this.boardCount = boardCount;
		this.boardDate = boardDate;
		this.boardSort = boardSort;
		this.reportNum = reportNum;
		this.nuriNum = nuriNum;
		this.status = status;
	}

   public String getBoardNum() {
      return boardNum;
   }


   public void setBoardNum(String boardNum) {
      this.boardNum = boardNum;
   }


   public String getBoardTitle() {
      return boardTitle;
   }


   public void setBoardTitle(String boardTitle) {
      this.boardTitle = boardTitle;
   }


   public String getBoardContent() {
      return boardContent;
   }


   public void setBoardContent(String boardContent) {
      this.boardContent = boardContent;
   }

	public String getUserNum() {
		return userNum;
	}


	public void setUserNum(String userNum) {
		this.userNum = userNum;
	}


	public int getBoardCount() {
		return boardCount;
	}


	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}


	public Date getBoardDate() {
		return boardDate;
	}

   public void setBoardCount(int boardCount) {
      this.boardCount = boardCount;
   }


   public Date getBoardDate() {
      return boardDate;
   }


   public void setBoardDate(Date boardDate) {
      this.boardDate = boardDate;
   }


   public String getBoardSort() {
      return boardSort;
   }

	public String getReportNum() {
		return reportNum;
	}


	public void setReportNum(String reportNum) {
		this.reportNum = reportNum;
	}


	public String getNuriNum() {
		return nuriNum;
	}



   public void setBoardSort(String boardSort) {
      this.boardSort = boardSort;
   }

   public String getReportNum() {
      return reportNum;
   }


   public void setReportNum(String reportNum) {
      this.reportNum = reportNum;
   }


   public String getNuriNum() {
      return nuriNum;
   }


   public void setNuriNum(String nuriNum) {
      this.nuriNum = nuriNum;
   }


   public String getStatus() {
      return status;
   }


   public void setStatus(String status) {
      this.status = status;
   }


   @Override
   public String toString() {
      return "board [boardNum=" + boardNum + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
            + ", userNum=" + userNum + ", boardCount=" + boardCount + ", boardDate=" + boardDate + ", boardSort="
            + boardSort + ", reportNum=" + reportNum + ", nuriNum=" + nuriNum + ", status=" + status + "]";
   }
   
}

