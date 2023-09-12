<%@page import="com.codingbox.DAO.MyBatisDAO"%>
<%@page import="com.codingbox.DTO.UserDTO"%>
<%@page import="com.codingbox.DAO.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
        MyBatisDAO mdao = new MyBatisDAO();
        String userid = request.getParameter("userid");
        String userpw = request.getParameter("userpw");
      
        UserDTO member = mdao.login(userid, userpw);
         
        if(member != null ) {    //로그인성공
            session.setAttribute("session_id", member) ;
            // DB 조회
   %>
      <script>
         // alert("로그인 성공") ;
         location.href = "main_login.jsp" ;
      </script>
      
   
   <%    } else { // 로그인실패 %>
      <script>
         alert("다시 로그인 해주세요.") ;
         location.href = "login.jsp" ;
      </script>
      
   <% } %>
</body>
</html>