<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<link href="${path}/resources/css/payment.css" rel="stylesheet" />
</head>
<style>
div {
  margin: 0 auto;
}
</style>
<body>
<div class="container mt-5 center-container">
	<div class="page-header" align="center">
		<div><h4>${tourCategory} ${title }</h4></div>
	</div>

	 <div class="row justify-content-center">
        <div class="col-md-4">
			<form name="form1" method="post" action="${path}/payment/paymentCheck">
				<input type="hidden" name="tourCategory" value="${tourCategory }">
				<input type="hidden" name="title" value="${title }">
	
				<div class="form-group">
					<label for="userName">이름</label>
					<input type="text" id="name" name="name" class="form-control" value="${sessionScope.userName }">
				</div>
				<div class="form-group">
					<label for="phone">전화번호</label>
					<input type="text" id="phone" name="phone" class="form-control">
				</div>
				<div class="form-group">
					<label for="card_num">카드번호</label>
					<input type="text" id="card_num" name="card_num" class="form-control">
				</div>
				<div class="form-group">
					<label for="cvc">cvc</label>
					<input type="password" id="cvc" name="cvc" class="form-control">
				</div>
				<div class="form-group">
					<label for="card_pw">비밀번호</label>
					<input type="password" id="card_pw" name="card_pw" class="form-control">
				</div>
				<div class="text-center">
					<input type="submit" value="결제하기" class="btn btn-default">
					<input type="reset" value="초기화" class="btn btn-default">
				</div>
			</form>
		</div>
	</div>
</div>
	<%-- <c:if test="${msg=='결제실패'}">
		<div>불일치</div>
	</c:if> --%>
</body>
<%@include file ="../include/footer2.jsp" %>
</html>