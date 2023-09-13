<%@page import="java.util.HashMap"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
    <%-- for(int i= 0;i<=10;i++)--%>
    <c:forEach var="i" begin="0" end="10" step="1"> ${i} </c:forEach>
    <hr />
    <c:set var="arData" value="<%=new int[]{10,20,30,40,50} %>" />
    <c:forEach var="i" begin="0" end="4" step="1"> ${arData[i]} </c:forEach>
    <hr />
    <c:forEach var="data" items="${arData}"/>
    
    <%
    	HashMap<String,Integer> map = new HashMap<>();
    map.put("하나",1);
    map.put("둘",2);
    map.put("셋",3);
    %>
    <c:set var="map" value="<%=map %>"/>
    <c:forEach var="entry" items="${map }">
    ${entry.key }:${entry.value } <br>
    </c:forEach>
  </body>
</html>
