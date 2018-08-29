package com.kh.nuriter.board.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import static com.kh.nuriter.common.JDBCTemplate.*;

import com.kh.nuriter.board.model.vo.board;
import com.kh.nuriter.board.model.vo.reportNuri;




public class BoardDao {
	private Properties prop = new Properties();
	
	public BoardDao(){
		String fileName = BoardDao.class.getResource("/sql/board/board-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	//넣기
	public int InsertReportNuri(Connection con, board rNuri) {
		int result =0;
		PreparedStatement pstmt = null;
		
		String query = prop.getProperty("insertReportNuri");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, rNuri.getBoardTitle());
			pstmt.setString(2, rNuri.getBoardContent());
			pstmt.setString(3, (rNuri.getUserNum())+"");
			pstmt.setString(4, rNuri.getNuriNum());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(pstmt);
			
		}
		

		return result ;
	}
	//페이징
	public int reportListCount(Connection con) {
		int listCount =0;
		Statement stmt =null;
		ResultSet rset =null;
		
		
		String query = prop.getProperty("reportListCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()){
				listCount =rset.getInt(1);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(stmt);
			close(rset);
		}
		return listCount;
	}


	//전체조회
	public ArrayList<reportNuri> selectReportList(Connection con, int currentPage, int limit) {
		ArrayList<reportNuri> rlist =null;
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		reportNuri rn = null;
		
		String query =prop.getProperty("selectReportList");
		
		try {
			pstmt =con.prepareStatement(query);
			
			int startNum =(currentPage -1)* limit + 1;
			int endNum = startNum + limit-1;
			
			pstmt.setInt(1, startNum);
			pstmt.setInt(2, endNum);
			
			rset = pstmt.executeQuery();
			
			rlist = new ArrayList<reportNuri>();
			
			while(rset.next()){
				rn = new reportNuri();
				
				rn.setBoardTitle(rset.getString("board_title"));
				rn.setBoardContent(rset.getString("board_content"));
				rn.setOwnerNickname(rset.getString("nuriboss"));
				/*rn.setUserNum(rset.getInt("user_number"));*/
				rn.setBoardDate(rset.getDate("board_date"));
				rn.setNuriNickname(rset.getString("reporter"));
				/*rn.setN_ownerNum(rset.getString("owner_number"));*/
				
				rlist.add(rn);
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		System.out.println(rlist);
		return rlist;
	}

}
