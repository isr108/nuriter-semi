package com.kh.nuriter.attend.model.dao;

import static com.kh.nuriter.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.nuriter.attend.model.vo.Attend;
import com.kh.nuriter.attend.model.vo.AttendCode;
import com.kh.nuriter.attend.model.vo.Attendprint;
import com.kh.nuriter.attend.model.vo.Enter;

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
			System.out.println("rest1 : " + rset);
			
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


	public ArrayList<Attend> attendOk(Connection con, String usernum) {
		ArrayList<Attend> attend = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		/*String query=null;*/		
		String query = prop.getProperty("attendOk");
		
		try {	
			/*pstmt = con.prepareStatement(query);
			pstmt.setString(1, nunum);
			pstmt.setString(2, nunum);
			rset = pstmt.executeQuery();*/
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, usernum);
			
			rset = pstmt.executeQuery();
			System.out.println("dao 유저넘버 : "+ usernum);
			System.out.println("rest1 : " + rset);
			
			if(rset != null){
			attend = new ArrayList<Attend>();	
			while(rset.next()){	
				Attend attend1 = new Attend();
				attend1.setAttendNumber(rset.getString("attend_number"));
				attend1.setAttendCodeId(rset.getString("attendcode_id"));
				attend1.setUserNumber(rset.getString("user_number"));
				attend1.setAttendDate(rset.getDate("attend_date"));
			
				attend.add(attend1);
			}
		 }
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rset);
			
		}
		
		return attend;
	}


	public ArrayList<Attendprint> attendprint(Connection con, String nunum) {
		ArrayList<Attendprint> att = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		/*String query=null;*/		
		String query = prop.getProperty("attendPrint");
		
		try {	
			/*pstmt = con.prepareStatement(query);
			pstmt.setString(1, nunum);
			pstmt.setString(2, nunum);
			rset = pstmt.executeQuery();*/
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, nunum);
			
			rset = pstmt.executeQuery();
			System.out.println("dao nunum : "+ nunum);
			System.out.println("rest1 : " + rset);
			
			if(rset != null){
			att = new ArrayList<Attendprint>();	
			while(rset.next()){	
				Attendprint attend1 = new Attendprint();
				attend1.setAttendCodeId(rset.getString("attendcode_id"));
				attend1.setNickName(rset.getString("nickname"));
				attend1.setNuriNumber(rset.getString("nuri_number"));
				attend1.setAttendDate(rset.getDate("attend_date"));
			
				att.add(attend1);
			}
		 }
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rset);
			
		}
		
		return att;
	}


	public ArrayList<Enter> enterprint(Connection con, String nunum) {
	 ArrayList<Enter> en = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		/*String query=null;*/		
		String query = prop.getProperty("enterPrint");
		
		try {	
			/*pstmt = con.prepareStatement(query);
			pstmt.setString(1, nunum);
			pstmt.setString(2, nunum);
			rset = pstmt.executeQuery();*/
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, nunum);
			
			rset = pstmt.executeQuery();
			System.out.println("dao nunum : "+ nunum);
			System.out.println("rest1 : " + rset);
			
			if(rset != null){
			en = new ArrayList<Enter>();	
			while(rset.next()){	
				Enter enter = new Enter();
				enter.setUserNumber(rset.getString("user_number"));
				enter.setNickName(rset.getString("nickname"));
				enter.setNuriNumber(rset.getString("nuri_number"));
				enter.setEnterDate(rset.getDate("enter_date"));
				enter.setTerminateDate(rset.getDate("terminate_date"));
				enter.setPhone(rset.getString("phone"));
			
				en.add(enter);
			}
		 }
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rset);
			
		}
		
		return en;
	}

}
