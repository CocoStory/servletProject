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
<h2>수정페이지</h2>
	<form action="modifyOk.jsp" method="post">
		<table border = "1">
			<tr>
				<th>글제목</th>
				<td colspan="3"><input type="text" name = "subject" value="<%=vo.getSubject() %>"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name = "writer" value="<%=vo.getWriter() %>" readonly></td>
				<th>날짜</th>
				<td><%=vo.getWriteday() %></td>
			</tr>
			<tr height="300">
				<th>내용</th>
				<td colspan="3">
					<textarea name = "content" ><%=vo.getContent() %></textarea>
				</td>
			</tr>
		</table>
			<button type="button" onclick="location.href='view.do?bidx=<%=vo.getBidx()%>'">취소</button>
			<button>저장</button> 
	</form>
</body>
</html>