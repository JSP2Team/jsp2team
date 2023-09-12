<%@page import="com.codingbox.DTO.UserDTO"%>
<%@page import="com.codingbox.web.dto.LoginDTO"%>
<%@page import="com.codingbox.web.dao.LoginDAO"%>
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
        LoginDAO mdao = new LoginDAO();
        String userid = request.getParameter("userid");
        String userpw = request.getParameter("userpw");
      
        UserDTO member = mdao.login(userid, userpw);
         
        if(member != null ) {    //로그인성공
            session.setAttribute("session_id", member) ;
            // DB 조회
   %>
      <script>
         // alert("로그인 성공") ;
         location.href = "login_main.jsp" ;
      </script>
      
   
   <%    } else { // 로그인실패 %>
      <script>
         alert("로그인 실패") ;
         location.href = "login.jsp" ;
      </script>
      
   <% } %>
</body>
</html>