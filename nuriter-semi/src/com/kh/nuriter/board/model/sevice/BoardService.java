package com.kh.nuriter.board.model.sevice;

import com.kh.nuriter.board.model.dao.BoardDao;
import com.kh.nuriter.board.model.vo.board;
import com.kh.nuriter.board.model.vo.reportNuri;

import static com.kh.nuriter.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;




public class BoardService {

	public int InsertReportNuri(board rNuri) {
		int result =0;
		Connection con = getConnection();
		
		result = new BoardDao().InsertReportNuri(con,rNuri);
		
		if(result >0){
			commit(con);
			
		}else{
			rollback(con);
		}
		
		return result;
	}

	public int reportListCount() {
		Connection con = getConnection();
		
		int listCount = new BoardDao().reportListCount(con);
		
	
		close(con);
		
		return listCount;
	}

	public ArrayList<reportNuri> selectReportList(int currentPage, int limit) {
		Connection con = getConnection();
		ArrayList<reportNuri> rlist = new BoardDao().selectReportList(con,currentPage,limit);
		
		close(con);
		
		
		return rlist;
	}

	

}
