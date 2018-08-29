package com.kh.nuriter.payment.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import static com.kh.nuriter.common.JDBCTemplate.*;


import com.kh.nuriter.payment.model.vo.Payment;
import com.kh.nuriter.payment.model.vo.PaymentDetail;

public class PaymentDao {
	private Properties prop = new Properties();

	public PaymentDao(){
		String fileName = PaymentDao.class.getResource("/sql/payment/payment-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
//
	public int InsertPayment(Payment p, Connection con) {
		int result =0;
		PreparedStatement pstmt = null;
		
		String query = prop.getProperty("insertPayment");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p.getpId());
			pstmt.setString(2, p.getUserNum());
			pstmt.setString(3, p.getNuriNum());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(pstmt);
			
		}
		

		return result;
	}
	public int InsertApplication(Connection con, Payment p1) {
		int result2 =0;
		PreparedStatement pstmt = null;
		
		String query =prop.getProperty("insertApplication");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p1.getUserNum());
			pstmt.setString(2, p1.getNuriNum());
			pstmt.setDate(3,p1.getTerminateDate());
			
			result2 = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(pstmt);
			
		}
		
		return result2;
	}
	public int InsertPaymentDetail(PaymentDetail pd, Connection con) {
		int result3 =0;
		PreparedStatement pstmt =null;
		
		String query =prop.getProperty("insertPaymentDetail");
		
		try {
			pstmt =con.prepareStatement(query);
			pstmt.setString(1, pd.getPid());
			pstmt.setString(2, pd.getCardNum());
			
			result3 = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		
		return result3;
	}

}
