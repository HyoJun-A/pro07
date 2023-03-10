<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0 user-scalable=no">
	<title>Login</title>
	<jsp:include page="../include/head.jsp" />
</head>
<body class="text-center">
	<div class="wrap">
		<jsp:include page="../include/header.jsp" />
		<!-- content -->
		<div class="container content">
		  <main class="form-signin w-50 h-100 m-auto">
			  <form action="${path1 }/user/login.do" method="post">
			    <img class="mb-4" src="../resources/img/logo1.png" alt="logo" width="123" height="48">
			    <div class="form-floating">
			      <input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력해주세요">
			      <label for="id">아이디</label>
			    </div><br>
			    <div class="form-floating">
			      <input type="password" class="form-control" id="pw" name="pw" placeholder="비밀번호를 입력해주세요" >
			      <label for="pw">비밀번호</label>
			    </div><br><br>
			    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
			  </form>
			</main>
		</div>
		<div class="fixed-bottom">
			<jsp:include page="../include/footer.jsp" />
		</div>
	</div>
</body>
</html>