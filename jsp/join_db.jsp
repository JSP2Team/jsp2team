<%@page import="com.codingbox.DTO.UserDTO"%>
<%@page import="com.codingbox.DAO.MyBatisDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="com.codingbox.DTO.UserDTO" />
	<!-- 외부에서 전달된 name속성과 필드의 이름이 같으면 value가 자동으로 세팅된다. -->
	<jsp:setProperty property="*" name="member"/>
	

	<%
		MyBatisDAO udao = new MyBatisDAO();
				UserDTO udto = new UserDTO();
				if(udao.join(member)){
		%>	
	<script>
		alert("회원가입 성공!");
		location.href = "/mall/jsp/login.jsp";
	</script>	
	<% } else { // 회원가입 실패 %>
	<script>
		 alert("회원가입 실패!");
		 location.href = "/mall/jsp/join.jsp";
	</script>			
	<%}  %>
</body>
</html>