<%@page import="com.codingbox.DAO.UserDAO"%>
<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	UserDAO udao = new UserDAO();
	if( !udao.checkId(userid) ){
		// 회원가입 가능한 상태
		out.print("ok");
	}else{
		// 회원가입 불가능한 상태
		out.print("not-ok");
	}
	
%>