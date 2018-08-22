package com.kh.nuriter.nuriter.model.service;

import static com.kh.nuriter.common.JDBCTemplate.close;
import static com.kh.nuriter.common.JDBCTemplate.commit;
import static com.kh.nuriter.common.JDBCTemplate.getConnection;
import static com.kh.nuriter.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.nuriter.nuriter.model.dao.NuriterDao;
import com.kh.nuriter.nuriter.model.vo.Category;
import com.kh.nuriter.nuriter.model.vo.Nuriboss;
import com.kh.nuriter.nuriter.model.vo.Nuriter;

public class NuriterService {

	public int insertNuriter(Nuriter n) {
		Connection con = getConnection();
		
		int result = new NuriterDao().insertNuriter(con, n);
		
		if(result > 0) {
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

}
