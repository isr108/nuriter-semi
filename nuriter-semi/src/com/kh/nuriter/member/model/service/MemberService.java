package com.kh.nuriter.member.model.service;

import static com.kh.nuriter.common.JDBCTemplate.close;
import static com.kh.nuriter.common.JDBCTemplate.commit;
import static com.kh.nuriter.common.JDBCTemplate.getConnection;
import static com.kh.nuriter.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.nuriter.member.model.dao.MemberDao;
import com.kh.nuriter.member.model.vo.Member;

public class MemberService {

	public Member loginCheck(String userEmail, String password) {
		Connection con = getConnection();
		
		Member loginUser = new MemberDao().loginCheck(con, userEmail, password);
		
		System.out.println("service userid : " +userEmail);
		System.out.println("service userpwd : " +password);
		close(con);
		
		return loginUser;
		
		//return new MemberDao().loginCheck(con, userId, password);
	}
	
	//회원 가입용 메소드
	public int insertMember(Member m) {
		Connection con = getConnection();
		
		int result = new MemberDao().insertMember(con, m);
		
		if(result > 0){
			commit(con);
		}else{
			rollback(con);
		}
		
		close(con);
				
		return result;
	}

	public int deleteMember(Member m) {
		Connection con = getConnection();
		
		int result = new MemberDao().deleteMember(con, m);
		
		if(result >0){
			commit(con);
		}else{
			rollback(con);
		}
		
		close(con);
		
		return result;
	}
	
	



	public int updateMember(Member m) {
		Connection con = getConnection();
		
		int result = new MemberDao().updateMember(con, m);
		
		if(result > 0){
			commit(con);
		}else{
			rollback(con);
		}
		
		close(con);
				
		return result;
	}
	
	/*

	public ArrayList<Member> selectAll() {
	Connection con = getConnection();
		
		ArrayList<Member> list = new MemberDao().selectAll(con);
		
		close(con);
		
		return list;
	}
*/
	public int idCheck(String userEmail) {
		Connection con = getConnection();
		
		int result = new MemberDao().idCheck(con, userEmail);
		
		
		close(con);
		
		
		return result;
		
	}

	public Member snsloginMember(String userEmail) {
		Connection con=getConnection();
		Member loginUser = new MemberDao().snsloginMember(con, userEmail);
		
		System.out.println("service userid : " +userEmail);
		close(con);
		
		return loginUser;
	}

	/*public int snsloginMember(Member m) {
		Connection con=getConnection();
		
		int result=new MemberDao().snsloginMember(m, con);
		
		if(result > 0){
			commit(con);
		}
		else{
			rollback(con);
		}
		
		close(con);
		
		return result;
	}*/

}