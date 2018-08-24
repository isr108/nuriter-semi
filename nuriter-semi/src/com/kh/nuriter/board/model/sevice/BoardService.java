package com.kh.nuriter.board.model.sevice;

import com.kh.nuriter.board.model.dao.BoardDao;
import com.kh.nuriter.board.model.vo.board;

import static com.kh.nuriter.common.JDBCTemplate.*;

import java.sql.Connection;



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

	

}
