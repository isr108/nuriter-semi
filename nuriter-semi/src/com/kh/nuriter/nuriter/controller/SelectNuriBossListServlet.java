package com.kh.nuriter.nuriter.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.nuriter.nuriter.model.service.NuriterService;
import com.kh.nuriter.nuriter.model.vo.Nuriboss;

/**
 * Servlet implementation class SelectNuriBossListServlet
 */
@WebServlet("/selectNuribossList.nu")
public class SelectNuriBossListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectNuriBossListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Nuriboss> bossList = new NuriterService().selectNuribossList();
		
		System.out.println("누리보스 목록 불러오는 서블릿 이동 완료!");
		
		String page = "";
		
		if(bossList != null){
			page="views/admin/nuribossList.jsp";
			request.setAttribute("bossList", bossList);
		}else{
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "누리장 조회 실패!");
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
