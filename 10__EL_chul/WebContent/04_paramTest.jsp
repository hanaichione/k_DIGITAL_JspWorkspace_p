<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1:${aaa}<br>
2: ${param.aaa}<br>
3: ${param.bbb} <br>
${paramValues.tst[0]}<br>
${paramValues.tst[1]}<br>
${paramValues.tst[2]}<br>
<form action="04_paramTest.jsp">
	<input type="checkbox" name="tst" value="aaa">aaa
	<input type="checkbox" name="tst" value="bbb">bbb
	<input type="checkbox" name="tst" value="ccc">ccc
	<input type="submit" value="전송">
</form>
</body>
</html>