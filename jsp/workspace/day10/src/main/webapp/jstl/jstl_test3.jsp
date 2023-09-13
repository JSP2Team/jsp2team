<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
    <h2>JSTL TEST2(제어-조건식)</h2>
    <c:set var="num" value="100" />
    <c:if test="${num gt 50}">
      <script>
        alert("이 수는 50보다 크다");
      </script>
    </c:if>
    <c:if test="${num gt 30}">
      <script>
        alert("이 수는 50보다 크다");
      </script>
    </c:if>

    <hr />
    choose문 사용 <br />
    (if~ else 문의 경우 jstl에서는 choose를 이용해서 구성해야한다) <br />

    <c:choose>
      <c:when test="${num gt 50}"> 이 수는 50보다 크다! </c:when>
      <c:when test="${num gt 30}"> 이 수는 30보다 크다! </c:when>
      <c:when test="${num gt 10}"> 이 수는 10보다 크다! </c:when>
      <c:otherwise> 이 수는 그 외의 숫자이다. </c:otherwise>
    </c:choose>
  </body>
</html>
