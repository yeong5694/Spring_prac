<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login</title>
</head>
<body>
	<h3>Login 화면</h3>
	
	<form method="get" action="${pageContext.request.contextPath}/courseSearch">
	id : <input type="text", id="id" name="id"> <br>
	password : <input type="password" id="password" name="password"> <br>
	<input type="submit" value="확인">
	</form>
</body>
</html>