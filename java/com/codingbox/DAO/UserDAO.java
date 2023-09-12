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
//	    	   member.setEmail(rs.getString(3));
//	    	   member.setUsername(rs.getString(4));
//	    	   member.setUsertel(rs.getString(5));
//	    	   member.setRegdate(rs.getString(6));
//	    	   member.setWithdrawl(rs.getBoolean(7));
	    	   
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
}	

