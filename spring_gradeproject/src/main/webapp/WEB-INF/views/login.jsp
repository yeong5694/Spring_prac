<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login</title>
</head>
<body>
	<h3>Login ȭ��</h3>
	
	<form method="post" action="${pageContext.request.contextPath}/course">
	id : <input type="text", id="id" name="id"> <br>
	password : <input type="password" id="password" name="password"> <br>
	
	<input type="submit" value="Ȯ��">
	</form>
</body>
</html>