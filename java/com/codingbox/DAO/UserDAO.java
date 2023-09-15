package com.codingbox.DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionException;

import com.codingbox.DTO.UserDTO;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.codingbox.web.mybatis.SqlMapConfig;

public class UserDAO {
	Context context;
	DataSource datasource;
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	
	
	
	
	public UserDTO login(String userid, String userpw) {
		UserDTO member = null;
		String sql = "SELECT * FROM USERS WHERE USER_ID = ? AND USER_PWD = ?";
		
		try {
	       context = new InitialContext(null);
	       datasource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
	       conn = datasource.getConnection();
	       
	       pstm=conn.prepareStatement(sql);
	       pstm.setString(1, userid);
	       pstm.setString(2, userpw);
	       rs = pstm.executeQuery();
	       
	       if(rs.next()) {
	    	   member = new UserDTO();
	    	   member.setUserid(rs.getString(1));
	    	   member.setUserpw(rs.getString(2));

	    	   
	       }
	       } catch (SQLException | NamingException e) {
	    	   e.printStackTrace();
	       } finally {
	    	   try {
	    		   if (rs != null) rs.close();
	    		   if (pstm != null) pstm.close();
	    		   if (conn != null) conn.close();
	    	   } catch (SQLException e) {
	    		   e.printStackTrace();
	    	   }
	       }
	       
			
		return member;
		
	}
	
	public boolean findid(String user_name, String usertel) {
	    boolean found = false;

	    try {
	        String sql = "SELECT USER_ID FROM USERS WHERE USER_NAME = ? AND USER_TEL = ?";
	        pstm = conn.prepareStatement(sql);
	        pstm.setString(1, user_name);
	        pstm.setString(2, usertel);

	        rs = pstm.executeQuery();

	        found = rs.next();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return found;
	}


	



import com.codingbox.DTO.UserDTO;

public class UserDAO {

	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public UserDAO() {
	    try {
	        sqlSession = factory.openSession(true);
	    } catch (Exception e) {
	        e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
	    }
	}
	
	public boolean checkId(String userid) {
		boolean result = false;
		
		// query 호출
		int cnt = 0;
		// 1 param : 어떤 쿼리를 호출할지
		// 2 param : 쿼리 실행시 필요한 파라미터 값
		cnt = sqlSession.selectOne("Mall.checkId", userid);
		if(cnt >= 1) {
			result = true;
		}
		
		
		return result;
	}
	
	public boolean join(UserDTO member) {
		boolean result = false;
		// 1 param : 어떤 쿼리를 호출할지
		// 2 param : 쿼리 실행시 필요한 파라미터 값
		if(sqlSession.insert("Mall.join", member) == 1) {
			result = true;
		}
		
		
		return result;
	}

	public String findId(UserDTO udto) throws Exception {
	    String user_id = null; // 기본값 설정

	    try {
	        user_id = sqlSession.selectOne("Mall.findId", udto);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return user_id;
	}

	public String findPw(UserDTO udto) throws Exception{
		String user_pw = null; // 기본값 설정

	    try {
	        user_pw = sqlSession.selectOne("Mall.findPw", udto);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return user_pw;
	}
	
	
	
	
}



