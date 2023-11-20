<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
</head>
<body>
<c:set var="path" value="${pageContext.request.contextPath}" />

<a href="${path}">메인</a> |
<a href="${path}/review/review_write">후기글쓰기</a> |
<a href="${path}/review/review_list">후기목록보기</a> |
<a href="${path}/contact/contact_write">문의글쓰기</a> |
<a href="${path}/contact/contact_list">문의목록보기</a> |
<a href="${path}/member/list"> 회원목록보기</a>|
<a href="${path}/member/write"> 회원가입</a>|

<a href="${path}/payment/payment"> 결제하기</a>|
</body>
</html>