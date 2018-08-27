package com.kh.nuriter.nuriter.model.service;

import static com.kh.nuriter.common.JDBCTemplate.close;
import static com.kh.nuriter.common.JDBCTemplate.commit;
import static com.kh.nuriter.common.JDBCTemplate.getConnection;
import static com.kh.nuriter.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.nuriter.member.model.vo.Member;
import com.kh.nuriter.nuriter.model.dao.NuriterDao;
import com.kh.nuriter.nuriter.model.vo.Attachment;
import com.kh.nuriter.nuriter.model.vo.Category;
import com.kh.nuriter.nuriter.model.vo.Nuriboss;
import com.kh.nuriter.nuriter.model.vo.Nuriter;


public class NuriterService {

	public int insertNuriter(Nuriter n, ArrayList<Attachment> fileList) {
		Connection con = getConnection();
		
		int result1 = new NuriterDao().insertNuriter(con, n); //누리터 개설
		
		String nuriNum = new NuriterDao().selectCurrval(con);//현재 누리터 번호 가져오기
		
		n.setNuriNum("N" + nuriNum);
		
		System.out.println("누리터 번호 => " + n.getNuriNum());
		
		int result2 = new NuriterDao().insertNuriterBoard(con, n); //Board 테이블에 누리터 개설
		
		String BoardNum = new NuriterDao().selectBoardCurrval(con);//현재 게시판 번호 가져오기
		
		String BoardId = "B" + BoardNum;
		
		int result3 = new NuriterDao().insertNuriterAttachment(con, n, fileList, BoardId);
		
		if(result3 > 0) {
			commit(con);
		}
		else {
			rollback(con);
		}
		
		close(con);
		
		return result1;
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

	public ArrayList<Nuriter> selectNuriterList(String category) {
		Connection con = getConnection();
		
	    ArrayList<Nuriter> list = new NuriterDao().selectNuriterList(con, category);
		
	    close(con);
	    
		return list;
	}

	public ArrayList<HashMap<String, Object>> selectThumbnailList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> pictureList = new NuriterDao().selectThumbnailList(con, currentPage, limit);
		
		close(con);
		
		return pictureList;
	}


	
	public int getNuriterListCount(String category) {
		Connection con = getConnection();
		
		int listCount = new NuriterDao().getNuriterListCount(con, category);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<Nuriter> selectEndList(int currentPage, int limit, String userNum) {
		Connection con = getConnection();
	      
	    ArrayList<Nuriter> list = new NuriterDao().selectEndList(con, currentPage, limit, userNum);
	      
	    close(con);
	      
	      
	      
	    return list;
	}

	
	
	public Nuriter selectOne(String num) {
		System.out.println("서비스 실행 시작");
		Connection con = getConnection();
		
		int result = 0;
		
		result = new NuriterDao().updateCount(con, num);
		
		if(result > 0) { 
			commit(con);
		} else { 
			rollback(con);
		}
		
		Nuriter n = new NuriterDao().selectOne(con, num);
		
		close(con);
		
		return n;

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

	public ArrayList<Nuriter> selectOpenList1(int currentPage, int limit, String userNum) {
		Connection con = getConnection();
	      
	    ArrayList<Nuriter> list = new NuriterDao().selectOpenList1(con, currentPage, limit, userNum);
	      
	    close(con);
	      
	      
	      
	    return list;
	}
	
	 public ArrayList<Nuriter> selectMyNuriList1(int currentPage, int limit, String userNum) {
	      Connection con = getConnection();
	         
	       ArrayList<Nuriter> list1 = new NuriterDao().selectMyNuriList1(con, currentPage, limit, userNum);
	         
	       close(con);
	         
	         
	         
	       return list1;
	   }


	public ArrayList<Nuriboss> selectNuribossList(int currentPage, int limit) {
		Connection con = getConnection();
		ArrayList<Nuriboss> bossList = new NuriterDao().selectNuribossList(con, currentPage, limit);
		
		close(con);
		
		return bossList;
	}

	

	public Nuriter selectOpenOne(String nunum) {
		Connection con = getConnection();
		
		Nuriter n = new NuriterDao().selectOpenOne(con, nunum);
		
		commit(con);
		
		close(con);
		
		return n;
	}

	public int getMyNuriterListCount(String userNum) {
		 Connection con = getConnection();
         
	       int listCount = new NuriterDao().getMyNuriterListCount(con, userNum);
	         
	         close(con);
	         
	         return listCount;
	}

	public ArrayList<Nuriter> selectMyNuriterList(String userNum) {
		Connection con = getConnection();
		
	    ArrayList<Nuriter> list = new NuriterDao().selectMyNuriterList(con, userNum);
		
	    close(con);
	    
		return list;
	}

	public ArrayList<HashMap<String, Object>> selectMyThumbnailList(int currentPage, int limit, String userNum) {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> pictureList = new NuriterDao().selectMyThumbnailList(con, currentPage, limit, userNum);
		
		close(con);
		
		return pictureList;
	}

	public int getDoneNuriListCount(String userNum) {
		Connection con = getConnection();
        
	    int listCount = new NuriterDao().getDoneNuriListCount(con, userNum);
	         
	    close(con);
	         
	    return listCount;
	}

	public ArrayList<Nuriter> selectDoneNuriList(int currentPage, int limit, String userNum) {
		 Connection con = getConnection();
         
	     ArrayList<Nuriter> list = new NuriterDao().selectDoneNuriList(con, currentPage, limit, userNum);
	         
	     close(con);
	         
	         
	         
	       return list;
	}

	public int deleteMyNuri(String userNum, String nuriNum) {
		Connection con = getConnection();
		
		int result = new NuriterDao().deleteMyNuri(con, userNum, nuriNum);
		
		if(result > 0){
			commit(con);
		}else{
			rollback(con);
		}
		
		close(con);
		
		return result;
	}


	public int getNuribossListCount() {
		Connection con = getConnection();
		
		int listCount = new NuriterDao().getNuribossListCount(con);
		
		close(con);
		
		return listCount;
	}

	public Nuriboss selectOneNuriboss(String num) {
		Connection con = getConnection();
		
		Nuriboss nb = new NuriterDao().selectOneNuriboss(con, num);
		
		close(con);
		
		return nb;
	}
	
	public int insertNuriterHobby(String userNum, String name) {
		Connection con = getConnection();
		
		int result = new NuriterDao().insertNuriterHobby(con, userNum, name);
		
		if(result > 0) {
			commit(con);
		}
		else {
			rollback(con);
		}
		
		close(con);
		
		return result;

	}




}
