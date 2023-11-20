<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html lang="ko-kr">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>awesome_trip</title>
<!-- Bootstrap -->
<link href="${path}/resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="${path}/resources/css/nomalize.css" rel="stylesheet" />
<link href="${path}/resources/css/home.css" rel="stylesheet" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<script src="http://code.jquery.com/jquery.js"></script>
</head>
<body>
<!-- nav bar 부분 -->
			<nav class="navbar navbar-fix navbar-fixed-top" role="navigation"
				id="navbar-scroll">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse1"></button>
						<a class="navbar-brand" href="${path}"><img
							src="${path}/resources/imgs/logo.png" alt="방구석" /> </a>
					</div>
					<div class="collapse navbar-collapse navbar-right">
						<ul class="nav navbar-nav nav-top">
							<li><a href="#"></a></li>
							<c:if test="${sessionScope.userId!=null}">
								<li><a>${sessionScope.userName}(${sessionScope.userId})님</a></li>
								<li><a href="${path}/member/view?userId=${userId}">마이페이지</a></li>
								<li><a href="${path}/login/logout">로그아웃</a></li>
								<c:if test="${sessionScope.userId eq 'admin'}">
									<li><a href="${path}/member/list">회원관리</a></li>
								</c:if>
							</c:if>
							<c:if test="${sessionScope.userId==null}">
							<li><a href="${path}/login/login">로그인</a></li>
							<li><a href="${path}/member/write">회원가입</a></li>
							</c:if>
						</ul>
					</div>
					<br>
					<br>
					<div class="collapse navbar-collapse navbar-right">
						<form class="navbar-form navbar-left" role="search" method="post"
							action="${path }/">
							<div class="form-group">
								<input type="text" name="keyword" value="${map.keyword}"
									class="form-control custom-search-input" size="30" placeholder="도시나 상품을 검색해보세요." />
							</div>
							<button type="submit" class="btn btn-default">
								<i class="fa fa-search"></i>
							</button>
						</form>
						
						<ul class="nav navbar-nav">
							<li><a style="color: black"	href="${path}/">홈</a></li>
							<li><a style="color: black"	href="${path}/review/review_list">후기</a></li>
							<li><a style="color: black"	href="${path}/contact/contact_list">여행 문의</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<hr />
<!-- </body>
</html> -->