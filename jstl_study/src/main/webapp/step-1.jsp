<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World</h1>
	<% for(int i=0; i<10; i++){ %>
	<%=i %>
	<%}%>
	<!-- query String 방식 주소?정보=11&정보2=22 -->
	<!-- 경로에서는 절대!! 절대!! 큰따옴표,띄어쓰기 사용x -->
	<a href="step-2.jsp?name=홍길동&age=18">step-2.jsp로 이동</a>
</body>
</html>