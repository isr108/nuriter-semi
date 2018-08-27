package com.kh.nuriter.attend.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.nuriter.attend.model.service.AttendCodeService;
import com.kh.nuriter.attend.model.service.AttendService;
import com.kh.nuriter.attend.model.vo.Attend;
import com.kh.nuriter.attend.model.vo.AttendCode;

/**
 * Servlet implementation class CheckcodeoneServlet
 */
@WebServlet("/checkcodeone.at")
public class CheckcodeoneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckcodeoneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String checkcode = request.getParameter("checkcode");
		String usernum = request.getParameter("userNum");
		
		AttendCode atcode = new AttendCodeService().codeCheck(checkcode);
		
		System.out.println("서블릿 :" + atcode);
		if(atcode.getAttendCodeid().equals(checkcode)){
			int result = new AttendService().insertattend(checkcode, usernum);
			String page = "";
			
			if(result>0){
				page = "/views/attend/csCheckone.jsp";
				request.setAttribute("msg", "출석체크 성공!");
				/*response.sendRedirect(request.getContextPath());*/
			}else{
				page = "/views/common/errorPage.jsp";
				request.setAttribute("msg", "출석체크 실패!!");
			}
			RequestDispatcher view = request.getRequestDispatcher(page);
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
