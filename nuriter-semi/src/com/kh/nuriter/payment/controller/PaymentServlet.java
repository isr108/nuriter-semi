package com.kh.nuriter.payment.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.nuriter.payment.model.service.PaymentService;
import com.kh.nuriter.payment.model.vo.Payment;
import com.kh.nuriter.payment.model.vo.PaymentDetail;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/payment.pms")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid =request.getParameter("imp");
		String userNum = request.getParameter("userNum");
		String nuriNum = request.getParameter("nuriNum");
		
		Payment p = new Payment();
		p.setpId(pid);
		p.setUserNum(userNum);
		p.setNuriNum(nuriNum);
		
		int result =new PaymentService().InsertPayment(p);
		
		Payment p1 = new Payment();
		p1.setUserNum(userNum);
		p1.setNuriNum(nuriNum);
		
		int result2 =0;
		
    	String page="";
		if(result >0){
			 result2 = new PaymentService().InsertApplication(p1);
			
		}else{
			/*request.getAttribute();*/
		}
		
		
		if(result2 > 0){
			System.out.println("성공");
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
