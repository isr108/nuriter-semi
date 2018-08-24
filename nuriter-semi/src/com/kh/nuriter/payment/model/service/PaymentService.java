package com.kh.nuriter.payment.model.service;

import com.kh.nuriter.payment.model.dao.PaymentDao;
import com.kh.nuriter.payment.model.vo.Payment;
import com.kh.nuriter.payment.model.vo.PaymentDetail;

import static com.kh.nuriter.common.JDBCTemplate.*;

import java.sql.Connection;


public class PaymentService {

	public int InsertPayment(Payment p) {
		int result = 0;
		Connection con = getConnection();
		
		result = new PaymentDao().InsertPayment(p,con);
		
		if(result >0){
			commit(con);
			
		}else{
			rollback(con);
			
			
		}
		close(con);
		
		
		
		
		return result;
	}

	public int InsertApplication(Payment p1) {
		int result2 =0;
		Connection con =getConnection();
		
		result2 = new PaymentDao().InsertApplication(con,p1);
		
		if(result2 >0){
			commit(con);
			
		}else{
			rollback(con);
			
			
		}
		close(con);
		
		
		
		
		return result2;
	}

	public int InsertPaymentDetail(PaymentDetail pd) {
		// TODO Auto-generated method stub
		return 0;
	}

}
