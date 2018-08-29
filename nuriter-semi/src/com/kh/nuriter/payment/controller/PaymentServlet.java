package com.kh.nuriter.payment.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
      String cardNum = request.getParameter("cardNum");
      System.out.println("cardNum : " + cardNum);
      
      
      Payment p = new Payment();
      p.setpId(pid);
      p.setUserNum(userNum);
      p.setNuriNum(nuriNum);
      
      int result =new PaymentService().InsertPayment(p); //결제
      
      Payment p1 = new Payment();
      p1.setUserNum(userNum);
      p1.setNuriNum(nuriNum);
      
      Payment p2 = new Payment();
      
      
      int result2 =0; //참가신청
      int result3 =0;//결제디테일
      
      PaymentDetail pd = new PaymentDetail();
      pd.setPid(pid);
      pd.setCardNum(cardNum);
      
      
      
       String page="";
      if(result >0){
          result2 = new PaymentService().InsertApplication(p1);
          	System.out.println("성공1");
      }else{
         System.out.println("실패1");
      }
      
      
      if(result2 > 0){
    	  response.sendRedirect("/ns/views/member/categoryDetail.jsp");
         result3 = new PaymentService().InsertPaymentDetail(pd);
         System.out.println("성공2");
      }else{
         System.out.println("실패2");
      }
      if(result3 >0){
         System.out.println("성공3");
         /*page="views/member/categoryDetail.jsp";
         request.setAttribute("pd", pd);*/
      }else{
         System.out.println("실패3");
      }
      /*response.sendRedirect("/ns/views/member/categoryDetail.jsp");*/
     /*RequestDispatcher view = request.getRequestDispatcher(page);
     view.forward(request, response);*/
   
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}