package com.kh.nuriter.nuriter.controller;

import java.io.IOException;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.nuriter.member.model.vo.Member;
import com.kh.nuriter.nuriter.model.service.NuriterService;
import com.kh.nuriter.nuriter.model.vo.Nuriter;

/**
 * Servlet implementation class InsertNuriterServlet
 */
@WebServlet("/insert.nu")
public class InsertNuriterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertNuriterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String writer = String.valueOf(((Member)(request.getSession().getAttribute("loginUser"))).getUserNumber());
		String category = request.getParameter("category");
		String title = request.getParameter("title");
		String fromDate = request.getParameter("fromDate");
		String toDate = request.getParameter("toDate");
		String startTime = request.getParameter("timepicker1");
		String endTime = request.getParameter("timepicker2");
		String placeOne = request.getParameter("placeOne");
		String placeTwo = request.getParameter("placeTwo");
		String placeTree = request.getParameter("placeTree");
		String place = placeOne + " " + placeTwo + " " + placeTree;
		String files = request.getParameter("summerText"); 
		String price = request.getParameter("price");
		
		/*System.out.println(writer);
		System.out.println(category);
		System.out.println(title);
		System.out.println(fromDate);
		System.out.println(toDate);
		System.out.println(startTime);
		System.out.println(endTime);
		System.out.println(place);
		System.out.println(files);
		System.out.println(price);*/
		
		java.sql.Date startDay = null;
		
		if(fromDate != "" || fromDate != null) {
			String[] dateArr = fromDate.split("-");
			
			int[] arr = new int[dateArr.length];
			
			for(int i = 0; i < dateArr.length; i++) {
				arr[i] = Integer.parseInt(dateArr[i]);
			}
			
			startDay = new java.sql.Date(new GregorianCalendar(arr[0], arr[1] - 1, arr[2]).getTimeInMillis());
			
			System.out.println(startDay);
		}else {
			startDay = new java.sql.Date(new GregorianCalendar().getTimeInMillis());
		}
		
		java.sql.Date endDay = null;
		
		if(toDate != "" || toDate != null) {
			String[] dateArr = toDate.split("-");
			
			int[] arr = new int[dateArr.length];
			
			for(int i = 0; i < dateArr.length; i++) {
				arr[i] = Integer.parseInt(dateArr[i]);
			}
			
			endDay = new java.sql.Date(new GregorianCalendar(arr[0], arr[1] - 1, arr[2]).getTimeInMillis());
			
			System.out.println(endDay);
		}else {
			endDay = new java.sql.Date(new GregorianCalendar().getTimeInMillis());
		}
		
		Nuriter n = new Nuriter();
		n.setOwnerNum(writer);
		n.setCategoryNum(category);
		n.setNuriTitle(title);
		n.setStartDate(startDay);
		n.setEndDate(endDay);
		n.setStartTime(startTime + " ~ " + endTime);
		n.setEndTime(endTime);
		n.setPlace(place);
		n.setContent(files);
		n.setPrice(price);
		
		System.out.println(n.toString());
		
		//서비스로 전달
		int result = new NuriterService().insertNuriter(n);
		
		//처리 결과에 따른 뷰 페이지 결정
		String page = "";
		
		if(result > 0){
			page = "views/common/successPage.jsp";
			request.setAttribute("msg", "누리터 개설에 성공하셨습니다!!");
		}else{
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "누리터 개설에 실패하셨습니다!!");
		
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
