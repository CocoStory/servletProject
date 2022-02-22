<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "vo.*" %>
<%

	BoardVO vo = (BoardVO)request.getAttribute("vo");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상세페이지</h2>
	<table border = "1">
		<tr>
			<th>글제목</th>
			<td colspan="3"><%=vo.getSubject() %></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=vo.getWriter() %></td>
			<th>날짜</th>
			<td><%=vo.getWriteday() %></td>
		</tr>
		<tr height="300">
			<th>내용</th>
			<td colspan="3"><%=vo.getContent() %></td>
		</tr>
	</table>
	<button type="button" onclick="location.href='modify.do?bidx=<%=vo.getBidx()%>' ">수정</button>
	
</body>
</html>