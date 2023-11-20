<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html lang="ko-kr">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>awesome_trip</title>
</head>
<body>
<div class="container-fluid">
	
	<header>
		<%@include file ="include/header.jsp" %>
	</header>

	<!--  -->
		<div id="carousel">
			<!-- 캐러셀 부분 시작 -->
			<div id="carousel-generic" class="carousel slide">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-generic" data-slide-to="1"></li>
					<li data-target="#carousel-generic" data-slide-to="2"></li>
				</ol>
				<!-- Carousel items -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="${path}/resources/imgs/main.jpg" alt="First slide" />
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="${path}/resources/imgs/main.jpg" alt="Second slide" />
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="${path}/resources/imgs/main.jpg" alt="Third slide" />
						<div class="carousel-caption"></div>
					</div>
				</div>
				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-generic"
					data-slide="prev"> <img src="${path}/resources/imgs/left.png"
					class="control" />
				</a> <a class="right carousel-control" href="#carousel-generic"
					data-slide="next"> <img src="${path}/resources/imgs/right.png"
					class="control" />
				</a>
			</div>
			<!--// 캐러셀 부분 끝  -->
		</div>

		<div class="container">
			<br><br><br>
			<div class="row">
				<c:forEach var="row" items="${map.list}">

					<div class="col-xs-6 col-sm-3">
						<div class="thumbnail">
							<a href="${path}/product/product?bno=${row.bno}">
							<img src="${path}/resources/imgs/${row.imgName}"
								alt="" />
								<div class="caption">
									<ul class="list-inline">
										<li class="pack">${row.tour }</li>
										<li class="disc">${row.name }</li>
									</ul>
									<ul class="list-unstyled">
										<li><b>${row.tourCategory }</b></li>
										<li><b>${row.title }</b></li>
										<li>${row.hour }</li>
									</ul>
									<dl>
										<dd>${row.single }</dd>
										<dt>${row.price }</dt>
									</dl>
								</div> <!--                <div class="zoom"> 자세히 보기 </div> -->
							</a>
						</div>
					</div>







				</c:forEach>
			</div>
		</div>
	</div>





	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="${path}/resources/js/bootstrap.min.js"></script>
	<script>
		$(".carousel").carousel();
	</script>
	
	<%@include file ="include/footer.jsp" %>
</body>
</html>
