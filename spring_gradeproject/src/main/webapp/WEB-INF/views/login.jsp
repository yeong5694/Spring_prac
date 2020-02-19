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
	<form method="post" action="${pageContext.request.contextPath}/courseSearch">
	id : <input type="text", id="username" name="username"> <br>
	password : <input type="password" id="password" name="password"> <br>
	
	<input type="button" value="확인">
</body>
</html>