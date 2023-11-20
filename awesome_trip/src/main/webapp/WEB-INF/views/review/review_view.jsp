<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기</title>
<%@ include file="../include/header.jsp" %>
<script>
	$(function() {
		$("#btnUpdate").click(function() {
			var title = $("#title").val();
			var content = $("#content").val();
			var writer = $("#writer").val();
			//document.form1.title.value 동일한 기능
			if (title == "") {
				alert("제목을 입력하세요");
				docuemnt.form1.title.focus();
				return;
			}
			if (content = "") {
				alert("내용을 입력하세요");
				docuemnt.form1.title.focus();
				return;
			}
			if (writer == "") {
				alert("작성자를 입력하세요");
				docuemnt.form1.title.focus();
				return;
			}
			if (confirm("수정하시겠습니까")) {
				document.form1.action = "${path}/review/review_update";
				document.form1.submit();
			}
		});
		$("#btnDelete").click(function() {
			if (confirm("삭제하시겠습니까")) {
				document.form1.action = "${path}/review/review_delete";
				document.form1.submit();
			}
		});
	});
</script>
</head>
<body>
<!-- 부트스트랩의 기본 -->
<div class="container">
	<div class="page-header">
		<h4>후기 상세보기</h4>
	</div>
	<div style="padding : 30px;">
	<form id="form1" name="form1" method="post">
		<div class="row">
			<div class="form-group">
				<label>번호</label>
				<input type="text" value="${dto.bno }" class="form-control" size="160" readonly="readonly">
			</div>
		</div>
		<div class="row">
			<div class="form-group">
				<label>작성자</label>
				<input type="text" name="writer" value="${dto.writer }" id="writer" class="form-control" size="160" placeholder="이름을 입력하세요." readonly="readonly">
			</div>
		</div>
		<div class="row">
			<div class="form-group">
				<label>제목</label>
				<input type="text" name="title" value="${dto.title }" id="title" class="form-control" size="160" readonly="readonly">
			</div>
		</div>
		<c:if test="${sessionScope.userName eq dto.writer || sessionScope.userId eq 'admin'}">
		<div class="row">
			<div class="form-group">
				<label>내용</label>
				<textarea name="content" rows="4" cols="40" id="content" class="form-control" placeholder="내용을 입력하세요." style="width: 1090px; height: 350px; resize: none;">${dto.content}</textarea>
			</div>
		</div>
		</c:if>
		<c:if test="${sessionScope.userName ne dto.writer && sessionScope.userId ne 'admin'}">
		<div class="row">
			<div class="form-group">
				<label>내용</label>
				<textarea name="content" rows="4" cols="40" id="content" class="form-control" placeholder="내용을 입력하세요." style="width: 1090px; height: 350px; resize: none;" readonly="readonly">${dto.content}</textarea>
			</div>
		</div>
		</c:if>
		<br>
		<div class="text-center">
			<input type="hidden" name="bno"	value="${dto.bno }"> 
			<button type="button" class="btn btn-default" id="btnList">목록</button>
			<c:if test="${sessionScope.userName eq dto.writer || sessionScope.userId eq 'admin'}">
				<button type="button" class="btn btn-default" id="btnUpdate">수정</button>
				<button type="button" class="btn btn-default" id="btnDelete">삭제</button>
			</c:if>
		</div>
	</form>
	</div>
</div>
<script>
	let form = $("#form1");
	
	$("#btnList").on("click", function(e){
		form.find("#bno").remove();
		form.attr("action", "${path}/review/review_list");
		form.submit();
	});
</script>
</body>
<%@include file ="../include/footer.jsp" %>
</html>