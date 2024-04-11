<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>form 태그로 전달한 파라미터 받기</h1>
<!-- EL 태그 방식은 내부적으로 형변환을 하여 연산 가능 -->
이름 : ${param.name } <br>
나이 : ${param.age+1 } <br>

<hr>

<!-- 스크립틀릿 방식으로 파라미터 가져오기 -->
<!-- 파라미터 값을 무조건 문자열로 인식하여 연산 불가능(형변환 필요) -->
<%=request.getParameter("name") %>
<%=request.getParameter("age")+1 %>

<!-- c:if이용하여 나이가 18세 이하면 미성년자 입니다 라고 출력 -->
<c:if test="${param.age <= 18 }">
	<h2>${param.name }은 미성년자 입니다.</h2>
</c:if>

<hr>

<!-- choose를 사용하여 다중조건 처리 -->
<!-- age가 19세이상 성인 / 15세이상 청소년 / 5세이상 어린이 / 나머지 유아 -->
<!-- c:when(조건을 주고) / c:otherwise(디폴트) -->
<!-- c태그 내에 주석을 넣으면 인지해서 오류를 내는 경우가 있음 -->
<c:choose>
	<c:when test="${param.age >= 19 }">
		<h3>${param.name }님은 ${param.age }세 성인입니다.</h3>
	</c:when>
	<c:when test="${param.age >= 15 }">
		<h3>${param.name }님은 ${param.age }세 청소년입니다.</h3>
	</c:when>
	<c:when test="${param.age >= 5 }">
		<h3>${param.name }님은 ${param.age }세 어린이입니다.</h3>
	</c:when>
	<c:otherwise>
		<h3>${param.name }님은 ${param.age }세 유아입니다.</h3>
	</c:otherwise>
</c:choose>

<form action="step-5.jsp">
	<input type="checkbox" name="food" value="바나나">바나나 <br>	
	<input type="checkbox" name="food" value="키위">키위 <br>	
	<input type="checkbox" name="food" value="딸기">딸기 <br>	
	<input type="checkbox" name="food" value="오렌지">오렌지 <br>	
	<input type="checkbox" name="food" value="복숭아">복숭아 <br>
	<button type="submit">전송</button>
</form>

</body>
</html>