<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>CourseSearch</title>
</head>
<body>
	<h3>수강한 과목 전체 조회</h3>
	<hr>
	<table border=1>
		<c:forEach var="course" items="${courses }">
			<tr>
				<td>&nbsp; ${course.year}&nbsp;</td>
				<td>&nbsp; ${course.semester}&nbsp;</td>
				<td>&nbsp; ${course.code}&nbsp;</td>
				<td>&nbsp; ${course.c_name}&nbsp;</td>
				<td>&nbsp; ${course.division}&nbsp;</td>
				<td>&nbsp; ${course.point}&nbsp;</td>
				<td>&nbsp; ${course.score}&nbsp;</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>