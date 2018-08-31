package com.kh.nuriter.admin.model.service;

import static com.kh.nuriter.common.JDBCTemplate.close;
import static com.kh.nuriter.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.kh.nuriter.admin.model.dao.AdminDao;

public class AdminService {

	public int getListCount() {
		Connection con = getConnection();        
	    int listCount = new AdminDao().getListCount(con);
	         
	    close(con);
	         
	    return listCount;
	}

}
