<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="vo.UserVo"%>
<%@ page import="java.util.List"%>

<%
	List<UserVo> uList = (List<UserVo>)request.getAttribute("userList");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>java</h3>
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>비번</th>
					<th>이메일</th>
				</tr>
			</thead>
			<tbody>
				<%for(UserVo u: uList) {%>
					<tr>
						<td><%=u.getNo() %></td>
						<td><%=u.getName() %></td>
						<td><%=u.getPassword() %></td>
						<td><%=u.getEmail() %></td>
					</tr>
				<%} %>
			</tbody>
		</table>
		
		<h3>el</h3>
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>비번</th>
					<th>이메일</th>
					<th>index</th>
					<th>count</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${userList}" var="userVo" varStatus="status">
					<tr>
						<td>${userVo.no }</td>
						<td>${userVo.name }</td>
						<td>${userVo.password }</td>
						<td>${userVo.email }</td>
						<td>${status.index }</td>
						<td>${status.count }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>