<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "vo.*" %>
<%

	ArrayList<BoardVO> alist 
		=(ArrayList<BoardVO>)request.getAttribute("alist");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시판 목록</h2>
	controller 에서 넘어온 데이터 : <%=request.getAttribute("data1") %> 
	<br><br>
	- 가상경로를 이용한 상세페이지 구현하기 (view.do, board/view.jsp) <!-- list.do로 만든 목록 : 제목에 링크 달 것. 클릭시 view.do로 이동하게 할 것.
	 view.do를 가진 컨트롤러 생성 -> 컨트롤러 할 일 상세데이터 조회 - view.jsp로 포워드, bidx 필요함. 파라미터 ? 찍으며 넘기기, 파라미터 꺼내기 requestgetParameter
	 컨트롤러는 DAO(메소드) 호출, vo는 수정, 컨트롤러는 새로 만들기, VO 하나당 DB table 하나. dao 하나당 메뉴 하나. 컨트롤러는 가상경로당 하나씩   
	  -->
	
	<table border = "1">
		<thead>
			<tr>
				<th>글제목</th>
				<th>작성자</th>
			</tr>
		</thead>
		<tbody>
			<%for(int i=0; i<alist.size(); i++){
				BoardVO vo = alist.get(i);
			 %>
			<tr>
				<td><a href="view.do?bidx=<%=vo.getBidx()%>"><%=vo.getSubject() %></a></td> 
				<td><%=vo.getWriter() %></td>
			</tr>
			<%
			}%>
		</tbody>
	</table>
	
</body>
</html>