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
<link href="${path}/resources/css/nomalize.css" rel="stylesheet" />
<link href="${path}/resources/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${path}/resources/css/product.css" />
<link rel="stylesheet" href="${path}/resources/css/product_font.css" />
<style type="text/css">
#container {
  position: absolute;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>
</head>
<body>

	<header>
		<%@include file ="../include/header.jsp" %>
	</header>

<div id="container">
	<div>
		<div id="title">
			<!-- <h1>[여행지이름 링크]</h1> -->
			<h1>${dto. tourCategory} ${dto.title }</h1>
		</div>
		<div id="img">
			<div id="big_img">
			<img src="${path}/resources/imgs/${dto.imgName}">
			</div>
			<!-- <div id="small_img">
          <img src="images/coffee-pink.jpg" alt="" />
          <img src="images/coffee-blue.jpg" alt="" />
          <img src="images/coffee-gray.jpg" alt="" />
        </div> -->
		</div>
		<%-- ${dto } --%>
		<div id="info">
			<ul>
				<li>여행지 : ${dto.name }</li>
				<li>판매가 : ${dto.single} ${dto.price }</li>
				<li>여행시간 : ${dto.hour }</li>
				<li>업데이트 : ${dto.updateDate }</li>
			</ul>
			<c:if test="${sessionScope.userId!=null}">
				<button class="btn btn-default btn-sm">
					<a style="color:black; text-decoration: none;" href="${path}/payment/payment?bno=${dto.bno}&tourCategory=${dto.tourCategory}&title=${dto.title }">방구석 여행하러가기</a> 
				</button>
			</c:if>
			<!-- p>
				<a href="#info_detail" class="show">상세설명 보기</a>
				<a href="#" class="hidden">상세설명 닫기</a>
			</p -->
		</div>
	</div>
</div>
	<script src="${path}/resources/js/product.js"></script>
	<%@include file ="../include/footer2.jsp" %>
</body>
</html>
