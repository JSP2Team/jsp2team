package com.codingbox.DAO;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.codingbox.web.mybatis.SqlMapConfig;
import com.codingbox.DTO.UserDTO;

public class MyBatisDAO {

	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public MyBatisDAO() {
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
	public UserDTO login1( String userid, String userpw ) {
	      
		
	      HashMap<String, String> datas = new HashMap<>();
	      datas.put("userid", userid);
	      datas.put("userpw", userpw);
	      
	      UserDTO member =
	            sqlSession.selectOne("Mall.login", datas);
	      return member;
	      
	   }

	public int login(String userid, String userpw) {
		int result = 0;
		
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		if((Integer)sqlSession.selectOne("Mall.login",datas) == 1) {
			result = 1;
		}
		return result;
	}

	public UserDTO getUserInfo(String userid, String userpw) {
	    UserDTO user = null;
	    try{
	        user = sqlSession.selectOne("Mall.getUserInfo", userid);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return user;
	}
	
}



