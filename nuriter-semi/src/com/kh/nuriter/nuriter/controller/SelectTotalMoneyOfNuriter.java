package com.kh.nuriter.nuriter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.nuriter.nuriter.model.service.NuriterService;
import com.kh.nuriter.payment.model.service.PaymentService;

/**
 * Servlet implementation class SelectTotalMoneyOfNuriter
 */
@WebServlet("/selectNuriTotalMoney.nu")
public class SelectTotalMoneyOfNuriter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectTotalMoneyOfNuriter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("해당 누리터의 결제완료된 총 금액을 나타낼 서블릿 이동 완료!");
		String nuriNum = request.getParameter("nuriNum");
		System.out.println("누리터번호 : " + nuriNum);
		
		int totalPayNum = new PaymentService().getTotalPayNum(nuriNum);
		System.out.println(totalPayNum);
		
		int totalPayNum2 = new PaymentService().getTotalPayNum2(nuriNum);
		System.out.println(totalPayNum2);
		
		int price = new NuriterService().getNuriPrice(nuriNum);
		System.out.println("누리터 가격 : " + price);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
