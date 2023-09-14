package com.codingbox.DAO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.codingbox.DTO.*;
import com.codingbox.web.mybatis.SqlMapConfig;

public class ReplyDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public boolean addReply(ReplyDTO reply) {
		boolean result = false;
		
		if( sqlSession.insert("Mall.addReply", reply) == 1 ) {
			result = true;
		}
		
		return result;
	}

	public List<ReplyDTO> getReplys(int pr_key) {
		List<ReplyDTO> list = new ArrayList<ReplyDTO>();
		
		list = sqlSession.selectList("Mall.getReplys", pr_key);
		
		return list;
	}

	public boolean updateReply(int pr_key, String pr_content) {
		boolean result = false;
		
		HashMap<String, Object> datas = new HashMap<String, Object>();	// 파라미터 두개 이상일 땐 hashmap 사용
		datas.put("prod_key", pr_key);
		datas.put("pr_content", pr_content);
		
		if( sqlSession.update("Mall.updateReply", datas) == 1 ) {
			result = true;
		}
		
		return result;
	}

	public boolean deleteReply(int pr_key) {
		boolean result = true;
		
		if( sqlSession.delete("Mall.deleteReply", pr_key) == 1 ) {
			result = true;
		}
		
		return result;
	}
}
