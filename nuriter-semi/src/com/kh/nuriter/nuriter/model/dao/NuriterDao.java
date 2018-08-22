package com.kh.nuriter.nuriter.model.dao;

import static com.kh.nuriter.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.nuriter.nuriter.model.vo.Attachment;
import com.kh.nuriter.nuriter.model.vo.Category;
import com.kh.nuriter.nuriter.model.vo.Nuriboss;
import com.kh.nuriter.nuriter.model.vo.Nuriter;

public class NuriterDao {
	
	private Properties prop = new Properties();
	
	public NuriterDao() {
		String fileName = NuriterDao.class.getResource("/sql/nuriter/nuriter-query.properties").getPath();
	
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

	public int insertNuriter(Connection con, Nuriter n) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = prop.getProperty("insertNuriter");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, n.getOwnerNum()); //회원번호
			pstmt.setString(2, n.getCategoryNum()); //카테고리 넘버
			pstmt.setString(3, n.getNuriTitle()); //제목
			pstmt.setString(4, n.getContent()); //내용
			pstmt.setDate(5, n.getStartDate()); //시작
			pstmt.setDate(6, n.getEndDate()); //종료
			pstmt.setString(7, n.getStartTime()); //시작 종료 시간
			pstmt.setString(8, n.getPlace()); //장소
			pstmt.setString(9, n.getPrice()); //가격
			pstmt.setString(10, n.getPersonnel()); //총원
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Category> selectCategoryList(Connection con, String name) {
		ArrayList<Category> list = null;
		/*Statement stmt = null;*/
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectCategoryList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, name);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Category>();
			
			while(rset.next()) {
				Category c = new Category();
				c.setCno(rset.getString("CATEGORY_ID"));
				c.setCname(rset.getString("category_name"));
				
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

	public int insertNuriBoss(Connection con, Nuriboss n) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = prop.getProperty("insertNuriBoss");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, n.getUserNum()); //회원번호
			pstmt.setString(2, n.getCategoryNum()); //카테고리 넘버
			pstmt.setString(3, n.getBossContent()); //제목
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public String selectCurrval(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		String nuriNum = " ";
		
		String query = prop.getProperty("selectCurrval");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()){
				nuriNum = rset.getString(1);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(stmt);
			close(rset);
		}
		
		return nuriNum;
	}

	public int insertNuriterPoto(Connection con, Nuriter n, ArrayList<Attachment> fileList) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = prop.getProperty("insertNuriPoto");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, n.getNuriNum()); //누리터번호
			pstmt.setString(2, fileList.get(0).getOrigin()); //카테고리 넘버
			pstmt.setString(3, fileList.get(0).getChange()); //제목
			pstmt.setString(4, fileList.get(0).getPath()); //파일경로
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
