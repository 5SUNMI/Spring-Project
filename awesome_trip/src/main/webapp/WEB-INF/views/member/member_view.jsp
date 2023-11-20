<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<style>
div {
  margin: 0 auto;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<%-- <link href="${path}/resources/css/member.css" rel="stylesheet" /> --%>
<script>
	$(function(){
		$("#btnDelete").click(function(){
			if(confirm("탈퇴하시겠습니까?")){
				document.form1.action="${path}/member/delete";
				document.form1.submit();
			}		
		});
		$("#btnUpdate").click(function(){
			if(confirm("수정하시겠습니까?")){
				document.form1.action="${path}/member/update";
				document.form1.submit();
			}		
		});	
	});

</script>

</head>
<body>
<div class="container mt-5 center-container">
	<div class="page-header" align="center">
		<div><h4>정보 상세보기</h4></div>
	</div>

    <div class="row justify-content-center">
        <div class="col-md-4">
            <form name="form1" method="post">
                <div class="form-group">
                    <label for="userId">아이디</label>
                    <input type="text" id="userId" name="userId" class="form-control" value="${dto.userId}" readonly>
                </div>
                <div class="form-group">
                    <label for="userPw">비밀번호</label>
                    <c:if test="${message == '비밀번호 불일치' }">
                    	 <input type="text" id="userPw" name="userPw" class="form-control" onfocus="this.value=''" value="${message }">
                    </c:if>
                    <c:if test="${message == null }">
	                    <input type="text" id="userPw" name="userPw" class="form-control" >
                    </c:if>
                </div>
                <div class="form-group">
                    <label for="userName">이름</label>
                    <input type="text" id="userName" name="userName" class="form-control" value="${dto.userName}" readonly>
                </div>
                <div class="form-group">
                    <label for="userEmail">이메일</label>
                    <input type="text" id="userEmail" name="userEmail" class="form-control" value="${dto.userEmail}">
                </div>
                <div class="text-center">
                	<button type="button" class="btn btn-default" id="btnUpdate">수정</button>
                	<button type="button" class="btn btn-default" id="btnDelete">탈퇴</button>
            	</div>
            </form>
        </div>
    </div>
</div>
</body>
<%@include file ="../include/footer2.jsp" %>
</html>