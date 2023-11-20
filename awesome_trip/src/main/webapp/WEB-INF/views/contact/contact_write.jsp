<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행 문의</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<!-- 부트스트랩의 기본 -->
<div class="container">
	<div class="page-header">
		<h4>여행 문의 작성</h4>
	</div>
	<div style="padding : 30px;">
	<form name="form1" method="post" action="${path}/contact/contact_insert">
		<div class="row">
			<div class="form-group">
				<label>작성자</label>
				<input type="text" value="${sessionScope.userName}" name="writer" id="writer" class="form-control" size="160" placeholder="이름을 입력하세요." readonly="readonly">
			</div>
		</div>
		<div class="row">
			<div class="form-group">
				<label>제목</label>
				<input type="text" name="title" id="writer" class="form-control" size="160" placeholder="제목을 입력하세요.">
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
	        window.location.href = "${path}/contact/contact_list";
	    });
	});
</script>
</body>
<%@include file ="../include/footer.jsp" %>
</html>