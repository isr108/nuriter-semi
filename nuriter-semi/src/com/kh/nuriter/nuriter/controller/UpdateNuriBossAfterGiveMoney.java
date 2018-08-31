package com.kh.nuriter.nuriter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateNuriBossAfterGiveMoney
 */
@WebServlet("/updatePayStatus.nu")
public class UpdateNuriBossAfterGiveMoney extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNuriBossAfterGiveMoney() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("누리장 지급상태 변경하는 서블릿 이동 완료!");
		
		int payStatus = 1;
		
		System.out.println("payStatus : " + payStatus);
		
		response.sendRedirect("selectNuriTotalMoney.nu?payStatus="+payStatus);
		/*selectNuriTotalMoney.nu?nuriNum="+nuriNum+"&ownerNum="+ownerNum
*/		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
