package com.kh.nuriter.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.nuriter.admin.model.service.AdminService;
import com.kh.nuriter.attend.model.service.AttendService;
import com.kh.nuriter.member.model.vo.Member;
import com.kh.nuriter.member.model.vo.PageInfo;

/**
 * Servlet implementation class SelectGoneMemberListServlet
 */
@WebServlet("/selectGoneMemberList.ad")
public class SelectGoneMemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectGoneMemberListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage;
		int limit;
		int maxPage;
		int startPage;
		int endPage;
		
		currentPage = 1;
		
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = new AdminService().getListCount();	
		System.out.println("누리원 수 : " + listCount);
		
		// 한 페이지에 보여줄 게시물 수
		limit = 10;

		// 총 페이지 수 계산
		maxPage = (int) ((double) listCount / limit + 0.9);

		// 현재 페이지에 보여줄 시작 페이지 수
		startPage = (((int) ((double) currentPage / limit + 0.9)) - 1) * limit + 1;

		// 목록 아래 보여질 마지막 페이지 수
		endPage = startPage + limit - 1;

		if (maxPage < endPage) {
			endPage = maxPage;
		}
		
		// 페이지 정보를 공유할 vo객체 생성
		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		
		ArrayList<Member> list = new AttendService().selectMyNuriMember(currentPage, limit, nuriNum);
		System.out.println("탈퇴한 멤버 리스트 : " + list);

		String page = "";

		if (list != null) {
			page = "/views/common/goneMemberList.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "개설했던 누리터 조회!");
		}
		RequestDispatcher view = request.getRequestDispatcher(page);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
