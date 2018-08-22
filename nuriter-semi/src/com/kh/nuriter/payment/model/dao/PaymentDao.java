package com.kh.nuriter.payment.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.nuriter.payment.model.vo.Payment;

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
		}
		

		return result;
	}

}
