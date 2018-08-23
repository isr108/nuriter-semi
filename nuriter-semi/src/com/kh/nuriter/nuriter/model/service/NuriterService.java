package com.kh.nuriter.nuriter.model.service;

import static com.kh.nuriter.common.JDBCTemplate.rollback;
import static com.kh.nuriter.common.JDBCTemplate.close;
import static com.kh.nuriter.common.JDBCTemplate.getConnection;
import static com.kh.nuriter.common.JDBCTemplate.close;
import static com.kh.nuriter.common.JDBCTemplate.commit;
import static com.kh.nuriter.common.JDBCTemplate.getConnection;

import java.io.File;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.nuriter.nuriter.model.dao.NuriterDao;
import com.kh.nuriter.nuriter.model.vo.Attachment;
import com.kh.nuriter.nuriter.model.vo.Category;
import com.kh.nuriter.nuriter.model.vo.Nuriboss;
import com.kh.nuriter.nuriter.model.vo.Nuriter;

public class NuriterService {

	public int insertNuriter(Nuriter n, ArrayList<Attachment> fileList) {
		Connection con = getConnection();
		
		int result = new NuriterDao().insertNuriter(con, n);
		
		if(result > 0) {
			
			String nuriNum = new NuriterDao().selectCurrval(con); 
			
			n.setNuriNum('N' + nuriNum);
			
			System.out.println(n.getNuriNum());

			int result2 = new NuriterDao().insertNuriterPoto(con, n, fileList);
			
			if(result2 > 0) {
				System.out.println("성공");
			}else {
				//에러 페이지로 forward
				System.out.println("실패");
			}
			
			commit(con);
		}
		else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public ArrayList<Category> selectCategoryList(String name) {
		Connection con = getConnection();
		
		ArrayList<Category> list = new NuriterDao().selectCategoryList(con, name);
		
		close(con);
		
		return list;
	}

	public int insertNuriBoss(Nuriboss n) {
		Connection con = getConnection();
		
		int result = new NuriterDao().insertNuriBoss(con, n);
		
		if(result > 0) {
			commit(con);
		}
		else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	/*public int insertNuriterPoto(Nuriter n, ArrayList<Attachment> fileList) {
		Connection con = getConnection();
		
		int result = new NuriterDao().insertNuriPoto(con, n, fileList);
		
		if(result > 0) {
			commit(con);
		}
		else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}*/


	public int getListCount(String userNum) {
		Connection con = getConnection();
	      
	    int listCount = new NuriterDao().getListCount(con, userNum);
	      
	      close(con);
	      
	      return listCount;
	}

	public ArrayList<Nuriter> selectOpenList(int currentPage, int limit, String userNum) {
		Connection con = getConnection();
	      
	    ArrayList<Nuriter> list = new NuriterDao().selectOpenList(con, currentPage, limit, userNum);
	      
	    close(con);
	      
	      
	      
	    return list;
	}

	public ArrayList<Nuriter> selectNuriterList() {
		Connection con = getConnection();
	    ArrayList<Nuriter> list = new NuriterDao().selectNuriterList(con);
		
	    close(con);
	    
		return list;
	}

	public ArrayList<HashMap<String, Object>> selectThumbnailList() {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> pictureList = new NuriterDao().selectThumbnailList(con);
		
		close(con);
		
		return pictureList;
	}

	public ArrayList<Nuriter> selectEndList(int currentPage, int limit, String userNum) {
		Connection con = getConnection();
	      
	    ArrayList<Nuriter> list = new NuriterDao().selectEndList(con, currentPage, limit, userNum);
	      
	    close(con);
	      
	      
	      
	    return list;
	}

	public int getMyNuriListCount(String userNum) {
		Connection con = getConnection();
	      
	    int listCount = new NuriterDao().getMyNuriListCount(con, userNum);
	      
	      close(con);
	      
	      return listCount;
	}

	public ArrayList<Nuriter> selectMyNuriList(int currentPage, int limit, String userNum) {
		Connection con = getConnection();
	      
	    ArrayList<Nuriter> list = new NuriterDao().selectMyNuriList(con, currentPage, limit, userNum);
	      
	    close(con);
	      
	      
	      
	    return list;
	}

	



}
