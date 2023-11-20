<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<style>
div {
  margin: 0 auto;
}
</style>
<body>
<!-- 부트스트랩의 기본 -->
<div class="container">
	<div class="page-header" align="center">
		<h4>회원가입</h4>
	</div>
	
	<div class="row justify-content-center">
        <div class="col-md-4">
			<form name="form1" method="post" action="${path}/member/insert">
				<div class="form-group">
                    <label for="userId">아이디</label>
                    <input type="text" id="userId" name="userId" class="form-control" placeholder="아이디를 입력하세요.">
                </div>
                <div class="form-group">
                    <label for="userPw">비밀번호</label>
                    <input type="password" id="userPw" name="userPw" class="form-control" placeholder="비밀번호를 입력하세요.">
                </div>
                <div class="form-group">
                    <label for="userName">이름</label>
                    <input type="text" id="userName" name="userName" class="form-control" placeholder="이름을 입력하세요.">
                </div>
                <div class="form-group">
                    <label for="userEmail">이메일</label>
                    <input type="text" id="userEmail" name="userEmail" class="form-control" placeholder="이메일을 입력하세요.">
                </div>
				<div class="text-center">
                	<button type="submit" class="btn btn-default" onclick="formCheck(this.form)">가입하기</button>
                	<button type="reset" class="btn btn-default">초기화</button>
            	</div>
			</form>
		</div>
	</div>
</div>
<script>
	function formCheck(form){
		alert ( form.userName.value + '(' + form.userId.value +  ")님 회원가입 완료되었습니다." );
	}
</script>
<%@include file ="../include/footer2.jsp" %>
</body>
</html>