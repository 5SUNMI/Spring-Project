<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<!-- 부트스트랩의 기본 -->
<div class="container">
	<div class="page-header">
		<h4>후기 작성</h4>
	</div>
	<div style="padding : 30px;">
	<form name="form1" method="post" action="${path}/review/review_insert">
		<div class="row">
			<div class="form-group">
				<label>작성자</label>
				<input type="text" value="${sessionScope.userName}" name="writer" id="writer" class="form-control" size="160" placeholder="이름을 입력하세요." readonly="readonly">
			</div>
		</div>
		<div class="row">
			<div class="form-group">
				<label>제목</label>
				<select name="title" class="form-control" style="width:194%" >
					<c:forEach var="row" items="${map.list}">
					<option>${row.tourCategory } ${row.title }</option>
					</c:forEach>
				</select>
				<!-- <input type="text" name="title" id="title" class="form-control" size="150" placeholder="제목을 입력하세요."> -->
			</div>
		</div>
		<div class="row">
			<div class="form-group">
				<label>내용</label>
				<textarea name="content" rows="4" cols="40" id="content" class="form-control" placeholder="내용을 입력하세요." style="width: 1090px; height: 350px; resize: none;"></textarea>
			</div>
		</div>
		<div class="text-center">
				<button type="button" class="btn btn-default" id="btnList">목록</button>
				<c:if test="${sessionScope.userId!=null}">
					<button type="submit" class="btn btn-default" id="btnSave">작성</button>
					<button type="reset" class="btn btn-default">초기화</button>
				</c:if>
		</div>
	</form>
	</div>
</div>
<script>
	$(function(){
	    $("#btnList").click(function(){
	        window.location.href = "${path}/review/review_list";
	    });
	});
</script>
</body>
<%@include file ="../include/footer.jsp" %>
</html>