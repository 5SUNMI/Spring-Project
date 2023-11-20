<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<style>
div {
  margin: 0 auto;
}
</style>
<body>

	<header>
		<%@include file ="../include/header.jsp" %>
	</header>

<!-- 부트스트랩의 기본 -->
<div class="container">
	<div class="page-header" align="center">
		<h4>로그인</h4>
	</div>
	<div class="row justify-content-center">
        <div class="col-md-4">
			<form name="form1" method="post" action="${path}/">
				<div class="form-group">
                    <label for="userId">아이디</label>
                    <input type="text" id="userId" name="userId" class="form-control" placeholder="아이디를 입력하세요." >
                </div>
				<div class="form-group">
                    <label for="userPw">비밀번호</label>
                    <input type="password" id="userPw" name="userPw" class="form-control" placeholder="비밀번호를 입력하세요.">
                </div>
				<div class="text-center">
                	<button type="submit" class="btn btn-default" onclick="formCheck(this.form)">로그인</button>
                	<button type="reset" class="btn btn-default">초기화</button>
            	</div>
			</form>
		</div>
	</div>
</div>
<script>
	function formCheck(form){
		alert (form.userId.value + "님 로그인 하셨습니다." );
	}
</script>
<%-- <c:if test="${msg=='실패'}">
	<div>아이디와 비밀번호 불일치</div>
</c:if>
<c:if test="${msg=='logout'}">
	<div>로그아웃되었습니다.</div>
</c:if> --%>
<%@include file ="../include/footer2.jsp" %>
</body>
</html>