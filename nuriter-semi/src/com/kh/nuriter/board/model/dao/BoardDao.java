package com.kh.nuriter.board.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import static com.kh.nuriter.common.JDBCTemplate.*;

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



	public int InsertReportNuri(Connection con, reportNuri rNuri) {
		int result =0;
		PreparedStatement pstmt = null;
		
		String query = prop.getProperty("insertReportNuri");
		
		try {
			pstmt = con.prepareStatement(query);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

		return result ;
	}

}
