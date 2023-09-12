package com.codingbox.web.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.codingbox.web.mybatis.SqlMapConfig;



import com.codingbox.DTO.UserDTO;

public class LoginDAO {
	 private static LoginDAO instance;

	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	
    public static LoginDAO getInstance(){
        if(instance==null)
            instance=new LoginDAO();
        return instance;
    }
	
	public LoginDAO() {
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
	public UserDTO login(String userid, String userpw) 
    {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
 
		/*
		 * String dbPW = ""; // db에서 꺼낸 비밀번호를 담을 변수 int x = -1;
		 */
 
        try {
            // 쿼리 - 먼저 입력된 아이디로 DB에서 비밀번호를 조회한다.
            StringBuffer query = new StringBuffer();
            query.append("SELECT * FROM USERS WHERE USER_ID=?");
 
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(query.toString());
            pstmt.setString(1, userid);
            rs = pstmt.executeQuery();
 
            if (rs.next()) // 입려된 아이디에 해당하는 비번 있을경우
            {
               String dbPW = rs.getString("password"); // 비번을 변수에 넣는다.
 
               if (dbPW.equals(userpw)) {
                   // 비밀번호 일치, 로그인 성공
                   UserDTO user = new UserDTO();
                   user.setUserid(rs.getString("ID"));
                   user.setUserpw(dbPW);
                   // 이 외에 사용자 정보를 필요한 대로 설정합니다.
                   return user;
               }
            }
            return null;
 
        } catch (Exception sqle) {
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
    } // end loginCheck()
    
}

