<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>courseInsert</title>
</head>
<body>
	<table>
		<tr>
			<td>&nbsp;${course.year}&nbsp;</td>
			<td>&nbsp;${course.semester}&nbsp;</td>
			<td>&nbsp;${course.code}&nbsp;</td>
			<td>&nbsp;${course.c_name}&nbsp;</td>
			<td>&nbsp;${course.division}&nbsp;</td>
			<td>&nbsp;${course.point}&nbsp;</td>
		</tr>
	</table>
	<br>
	수강신청되었습니다!!
	<br>
	<p>
	<a href="${pageContext.request.contextPath}/course"> home</a>
	</p>
</body>
</html>