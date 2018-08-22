package com.kh.nuriter.payment.model.service;

import com.kh.nuriter.payment.model.dao.PaymentDao;
import com.kh.nuriter.payment.model.vo.Payment;
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
			
			
		}//
		close(con);
		
		
		
		
		return result;
	}

}
