<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기</title>
<%@ include file="../include/header.jsp"%>
<link href="${path}/resources/css/review.css" rel="stylesheet" />

</head>
<body>
<!-- 부트스트랩의 기본 -->
<div class="container">
	<div class="page-header">
		<div><h4>후기 <a style="text-decoration: none">${map.count }</a></h4></div>
	</div>

	<div class="con">
		<%-- ${sessionScope.userName} --%>
		
		<form id="moveForm" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		</form>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th style="width: 5%;">번호</th>
					<th style="width: 55%;">제목</th>
					<th style="width: 10%;">작성자</th>
					<th style="width: 10%;">작성일</th>
					<th style="width: 10%;">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="row" items="${map.list}">
				<tr>
					<td>${row.bno}</td>
					<td><a
						href="${path}/review/review_view?bno=${row.bno}&pageNum=${pageMaker.cri.pageNum }&amount=${pageMaker.cri.amount }">${row.title}</a></td>
					<td>${row.writer}</td>
					<td><fmt:formatDate pattern="yyyy/MM/dd" value="${row.regdate}" /></td>
					<td>${row.viewcnt}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<c:if test="${sessionScope.userId!=null}">
		<!-- row는 한줄을 모두 이 안에 있는 기능들만 보여주도록 하기위해 작성 -->
		<div class="row">
			<div class="form-group">
				<!-- pull-right는 버튼이 가장 오른쪽으로 가도록 하기 위해 작성 -->
				<a href="${path}/review/review_write">
					<button type="button" class="btn btn-default">후기 등록</button>
				</a>
			</div>
		</div>
		</c:if>
		<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul class="pagination">
					<!-- 전체 시작 페이지 버튼 -->
					<c:if test="${pageMaker.cri.pageNum>'1'}">
						<li class="pageInfo_btn previous">
							<a href="${pageMaker.realStart}"><<</a>
						</li>
					</c:if>
	
					<!-- 이전페이지 버튼 -->
					<c:if test="${pageMaker.prev}">
						<li class="pageInfo_btn previous">
							<a href="${pageMaker.startPage-1}">< 이전</a>
						</li>
					</c:if>
	
					<!-- 각 번호 페이지 버튼 -->
					<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
						<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active" : "" }">
							<a href="${num }">${num }</a>
						</li>
					</c:forEach>
	
					<!-- 다음페이지 버튼 -->
					<c:if test="${pageMaker.next}">
						<li class="pageInfo_btn next">
							<a href="${pageMaker.endPage + 1 }">다음 ></a>
						</li>
					</c:if>
	
					<!-- 전체 마지막 페이지 버튼 -->
					<c:if test="${pageMaker.cri.pageNum<pageMaker.realEnd}">
						<li class="pageInfo_btn previous">
							<a href="${pageMaker.realEnd}">>></a>
						</li>
					</c:if>
				</ul>
			</div>
		</div>
		
		<div class="text-center">
		<form name="form1" method="post" action="${path}/review/review_list" class="form-inline">
		<div class="form-group">
			<select name="searchOption" class="form-control">
				<option value="all" <c:if test="${map.searchOption == 'all'}">selected</c:if>>전체</option>
				<option value="writer" <c:if test="${map.searchOption == 'writer'}">selected</c:if>>작성자</option>
				<option value="title" <c:if test="${map.searchOption == 'title'}">selected</c:if>>제목</option>
				<option value="content" <c:if test="${map.searchOption == 'content'}">selected</c:if>>내용</option>
			</select>
		</div>
		<div class="form-group mx-sm-3">
			<input type="text" name="keyword" value="${map.keyword}" class="form-control" style="width: 200px;">
		</div>
		<button type="submit" class="btn btn-primary">검색</button>
		</form>
		</div>
	</div>
</div>
</body>
<%@include file ="../include/footer2.jsp" %>
<script>
	let moveForm = $("#moveForm");

	$(".pageInfo_btn a").on("click", function(e) {

		e.preventDefault();
		moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		moveForm.attr("action", "${path}/review/review_list");
		moveForm.submit();
	});
	
	
</script>
</html>