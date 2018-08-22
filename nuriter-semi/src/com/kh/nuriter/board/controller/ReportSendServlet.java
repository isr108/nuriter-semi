package com.kh.nuriter.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.nuriter.member.model.vo.Member;



/**
 * Servlet implementation class ReportSendServlet
 */
@WebServlet("/reportSend.rs")
public class ReportSendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportSendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String rTitle = request.getParameter("rTitle");
			String rContent = request.getParameter("rContent");
			
			String rUser = String.valueOf(((Member)(request.getSession().getAttribute("loginUser"))));
			
			String nuriNum =request.getParameter("nuriNum");
			
			System.out.println(nuriNum);
			System.out.println(rTitle);
			System.out.println(rContent);
			System.out.println(rUser);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
