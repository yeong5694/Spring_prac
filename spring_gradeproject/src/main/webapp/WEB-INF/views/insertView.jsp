<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert View</title>
</head>
<body>
	<h3>������û�ϱ�</h3>
	<form method="post" action="${pageContext.request.contextPath }/courseInsert" modelAttribute="course">
	<table border=1>
	<tr>
		<td>�����⵵ : </td> <td><input type="text" name="year" value="2020"></td>
	</tr>
	
	<tr>
		<td>�б� : </td> <td><input type="text" name="semester" value="1"></td>
	</tr>
	
	<tr>
		<td>�����ڵ� : </td> <td><input type="text" name="code"></td>
	</tr>
	
	<tr>
		<td>������� : </td> <td><input type="text" name="c_name"></td>
	</tr>
	
	<tr>
		<td>���� : </td> <td><input type="text" name="division"></td>
	</tr>
	
	<tr>
		<td>���� : </td> <td><input type="text" name="point"></td>
	</tr>
	
	<input type="hidden" name="score" value="O" >
	
	</table>
	<input type="submit" value="��û">
	</form>
</body>
</html>