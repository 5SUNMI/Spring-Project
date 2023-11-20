<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 관리</title>
<%@ include file="../include/header.jsp" %>
<link href="${path}/resources/css/review.css" rel="stylesheet" />
</head>
<body>
<!-- 부트스트랩의 기본 -->
<div class="container">
	<div class="page-header">
		<div><h4>회원 리스트 <a style="text-decoration: none">11</a></h4></div>
	</div>

	<div class="con">
		<table class="table table-hover">
			<thead>
				<tr>
					<th style="width: 20%;">아이디</th>
					<th style="width: 20%;">이름</th>
					<th style="width: 20%;">이메일</th>
					<!-- <th style="width: 20%;">가입일</th> -->
				</tr>
			</thead>
			<tbody>
				<c:forEach var="row" items="${list}">
				<tr>
					<td>${row.userId}</td>		
					<td><a href="${path}/member/view?userId=${row.userId}">${row.userName}</a></td>		
					<td>${row.userEmail}</td>		
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<%@include file ="../include/footer2.jsp" %>
</body>
</html>