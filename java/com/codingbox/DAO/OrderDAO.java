package com.codingbox.DAO;



import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.codingbox.DTO.OrderDTO;
import com.codingbox.web.mybatis.SqlMapConfig;

public class OrderDAO {

	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public OrderDAO() {
		try{
			sqlSession = factory.openSession(true);
			
		}catch( Exception e ) {
			e.printStackTrace();
			
		}
	}

	public boolean sign(OrderDTO odto) {
		boolean result = false;
		
		if(sqlSession.insert("Mall.order", odto) != 0) {
			result = true;
		}
		return result;
		
	}
	
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	public int test(String user_id) {
//
//		// 1 param : 어떤 쿼리를 호출할지
//		// 2 param : 쿼리 실행시 필요한 파라미터 값
//		int cnt;
//		cnt = sqlSession.selectOne("order.test", user_id);
//		
//		return cnt;
//		
//	}
	

}









