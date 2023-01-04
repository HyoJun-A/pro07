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
	<style>
	.qbox { width: 100%; height: auto; border: 1px solid skyblue; background-color: #e6f4fa; text-align: center; margin-bottom: 20px;}
	#table1 { width: 100%; height: auto; border: 1px solid skyblue;}]
	.q_title { }
	.q_content { }
	.q_date { }
	</style>
</head>
<body>
	<div class="wrap">
		<jsp:include page="../include/header.jsp" />
		<!-- content -->
		<div class="container">
			<div class="tc">
				<p class="rt"><a href="${path1 }">Home</a>/민원참여/민원정책 묻고 답하기</p>
				<h2>민원정책 묻고 답하기</h2>
			</div>
			<div class="qbox">
				<h2>사례</h2>
			</div>
			<div id="table1">
		      	<div class="q_title">
		      		<strong>
		      			${dto.title }
		      		</strong>
		      	</div>	
		      	<div class="q_content">
		      		${dto.content }
		      	</div>
				<span class="q_date">
					<fmt:parseDate value="${dto.credate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
				    <fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
				</span>   	
		      </div>
				<div class="button-group">
				  <a class="button" href="${path1 }/board/list.do">글 목록</a>
				  <a class="button" href="${path1 }/board/del.do?qno=${dto.qno}">글 삭제</a>
				  <a class="button" href="${path1 }/board/editForm.do?qno=${dto.qno}">글 수정</a>
				</div>
		</div>
		<div class="fixed-bottom">
			<jsp:include page="../include/footer.jsp" />
		</div>
	</div>
</body>
</html>