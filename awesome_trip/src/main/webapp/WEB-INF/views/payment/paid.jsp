<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<style>
iframe {
	border-radius: 0.8rem;
}

h1 {
	margin: 50px 10px 20px;
	text-align: center;
}
</style>
</head>
<body>
	<div id="tourCategory">
		<h1>${tourCategory}${title }</h1>

		<c:if test="${title eq '스위스 제네바 랜선투어 가족,친구,연인 (스위스/제네바)' }">
			<p align="middle">
				<iframe width="1300" height="600"
					src="https://www.youtube.com/embed/-oiBFilx-V0?start=5&autoplay=1&mute=1&controls=0&loop=1&rel=0&showsearch=0&showinfo=0"
					title="스위스에서 2번째로 큰도시 Genève -  제또분수, UN 유럽본부 그리고 칼뱅의자까지 제네바 구시가지 5분 가이드"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen> </iframe>
			</p>
		</c:if>

		<c:if test="${title eq '예술가들의 예술가들/MoMA모아 뉴욕현대미술관 1880~940년대' }">
			<p align="middle">
				<iframe width="1300" height="600"
					src="https://www.youtube-nocookie.com/embed/L6xcHj94sZ8?si=QxBaF2XZyB8yDiyr&amp;start=54&autoplay=1&mute=1&controls=0&loop=1&rel=0&showsearch=0&showinfo=0"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</p>
		</c:if>

		<c:if test="${title eq '*현지 Live* 타이베이 랜드마크 101 골목 투어' }">
			<p align="middle">
				<iframe width="1300" height="600"
					src="https://www.youtube-nocookie.com/embed/75WQL4sJIjs?si=GX1RLJxShSX-6JkS&amp;start=266&autoplay=1&mute=1&controls=0&loop=1&rel=0&showsearch=0&showinfo=0"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</p>
		</c:if>

		<c:if
			test="${title eq '*현지 Live* 영화 뷰티 인사이드의 촬영지 속 프라하 투어 (체코/프라하)' }">
			<p align="middle">
				<iframe width="1300" height="600"
					src="https://www.youtube-nocookie.com/embed/69oq6hgiPjY?si=1kZtqhndqXp0uRjX&amp;start=262&autoplay=1&mute=1&controls=0&loop=1&rel=0&showsearch=0&showinfo=0"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</p>
		</c:if>

		<c:if test="${title eq '프라도미술관 행복한 그림여행' }">
			<p align="middle">
				<iframe width="1300" height="600"
					src="https://www.youtube-nocookie.com/embed/R7RNXrAR32M?si=8kZ2oZSt0Bu2cXDL&amp;start=13&autoplay=1&mute=1&controls=0&loop=1&rel=0&showsearch=0&showinfo=0"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</p>
		</c:if>

		<c:if test="${title eq '집콕하며 즐기는 개성 만점 디지털 라이브 캐리커처' }">
			<p align="middle">
				<iframe width="1300" height="600"
					src="https://www.youtube-nocookie.com/embed/kspuexTTv2M?si=nKozgPMnDvv2iuP1&amp;start=13&autoplay=1&mute=1&controls=0&loop=1&rel=0&showsearch=0&showinfo=0"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</p>
		</c:if>

		<c:if test="${title eq '투어라이브 경주 올패스 - 가이드 없이 즐기는 셀프투어' }">
			<p align="middle">
				<iframe width="1300" height="600"
					src="https://www.youtube-nocookie.com/embed/4s3MymAhCVs?si=uAfExcY2a7u-lAmU&amp;start=10&autoplay=1&mute=1&controls=0&loop=1&rel=0&showsearch=0&showinfo=0"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</p>
		</c:if>

		<c:if test="${title eq '본태박물관 도슨트투어 - 도슨트 염승범의 현대미술산책' }">
			<p align="middle">
				<iframe width="1300" height="600"
					src="https://www.youtube-nocookie.com/embed/HgktbQBfhtc?si=PIfqAKjbWaKiP01u&amp;start=32&autoplay=1&mute=1&controls=0&loop=1&rel=0&showsearch=0&showinfo=0"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen> </iframe>
			</p>
		</c:if>
	</div>
	<!-- <button type="button" onclick="location.href='https://youtu.be/ZqfOQaUg74s?si=7k5Olx11XGvOUGJ2'">테스트</button> -->

</body>
<%@include file ="../include/footer.jsp" %>
</html>


