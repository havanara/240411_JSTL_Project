<%@ page import="java.util.ArrayList" %>
<%@ page import="jstl_study.CarVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		CarVO car = new CarVO("1234","소나타",2000);
		request.setAttribute("car", car);
	%>
	
	<!-- car 객체 출력 requestScope 생략가능 -->
	${requestScope.car.name } <br>
	${car.num } <br>
	${car.price } <br>
	
	<!-- request : 하나의 http 요청을 처리할 때 사용되는 영역 -->
	<!-- session : 하나의 웹 브라우저와 관련된 영역
	(브라우저를 종료하지 않는 이상 저장되어 있음)
	같은 웹 브라우저이면(크롬-크롬) 공유 가능 -->
	<%
		ArrayList<CarVO> list = new ArrayList<>();
		list.add(car);
		list.add(new CarVO("1111","그렌저",3000));
		list.add(new CarVO("2222","모닝",1500));
		// request.setAttribute("list", list);
		session.setAttribute("list", list);
	%>
	
	<c:forEach items="${list }" var="list" varStatus="i">
		${i.count }. ${list.name } / ${list.num} / ${list.price } <br>
	</c:forEach>
	
</body>
</html>