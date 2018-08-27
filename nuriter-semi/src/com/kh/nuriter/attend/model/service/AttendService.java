package com.kh.nuriter.attend.model.service;

import static com.kh.nuriter.common.JDBCTemplate.close;
import static com.kh.nuriter.common.JDBCTemplate.commit;
import static com.kh.nuriter.common.JDBCTemplate.getConnection;
import static com.kh.nuriter.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.nuriter.attend.model.dao.AttendCodeDao;
import com.kh.nuriter.attend.model.dao.AttendDao;
import com.kh.nuriter.attend.model.vo.Attend;
import com.kh.nuriter.attend.model.vo.AttendCode;

public class AttendService {

	public int insertattend(String checkcode, String usernum) {
		Connection con=getConnection();
		
		int result = new AttendDao().insertattend(con, checkcode, usernum);
		
		if(result >0){
			commit(con);
		}else{
			rollback(con);
		}
		
		return result;
	}

	public Attend attendCheck(String checkcode, String usernum) {
		Connection con=getConnection();
		
		Attend attend = new AttendDao().attendCheck(con, checkcode, usernum);
		
		commit(con);
		
		close(con);
		
		System.out.println("서비스 atcode : " + attend);
		
		return attend;
	}

}
