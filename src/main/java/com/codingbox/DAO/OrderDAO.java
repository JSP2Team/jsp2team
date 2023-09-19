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
}