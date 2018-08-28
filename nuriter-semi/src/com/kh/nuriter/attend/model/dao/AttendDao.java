package com.kh.nuriter.attend.model.dao;

import static com.kh.nuriter.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.nuriter.attend.model.vo.Attend;
import com.kh.nuriter.attend.model.vo.AttendCode;

public class AttendDao {
private Properties prop = new Properties();
	
	public AttendDao() {
		String fileName = AttendCodeDao.class.getResource("/sql/attend/attend-query.properties").getPath();
	
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public int insertattend(Connection con, String checkcode, String usernum) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("insertAttend");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,checkcode);
			pstmt.setString(2, usernum);
			
			result = pstmt.executeUpdate();
		
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		
		System.out.println("dao result : " +result);
		return result;
	}


	public Attend attendCheck(Connection con, String checkcode, String usernum) {
		Attend attend = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		/*String query=null;*/		
		String query = prop.getProperty("attendCheck");
		
		try {	
			/*pstmt = con.prepareStatement(query);
			pstmt.setString(1, nunum);
			pstmt.setString(2, nunum);
			rset = pstmt.executeQuery();*/
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, checkcode);
			pstmt.setString(2, usernum);
			
			rset = pstmt.executeQuery();
			System.out.println("dao 체크코드2 : "+ checkcode);
			System.out.println("rest : " + rset);
			
			while(rset.next()){	
				attend = new Attend();
				attend.setAttendNumber(rset.getString("attend_number"));
				attend.setAttendCodeId(rset.getString("attendcode_id"));
				attend.setUserNumber(rset.getString("user_number"));
				attend.setAttendDate(rset.getDate("attend_date"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rset);
			
		}
		
		return attend;
	}

}
