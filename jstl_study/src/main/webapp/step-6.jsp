<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 메뉴판을 체크박스 형태로 만들어서 step-7.jsp로 전송 -->
	<!-- step-7.jsp에서 주문명 어떤 메뉴를 주문했는지 출력 -->
	
	<!-- post 처리 시 -->

	<form action="step-7.jsp" method="post">
		<input type="text" name="customer"> <br>
		<input type="checkbox" name="menu" value="치킨">치킨 <br>
		<input type="checkbox" name="menu" value="피자">피자 <br>
		<input type="checkbox" name="menu" value="초밥">초밥 <br>
		<input type="checkbox" name="menu" value="떡볶이">떡볶이 <br>
		<input type="checkbox" name="menu" value="족발">족발 <br>
		<button type="submit">전송</button>
	</form>

</body>
</html>