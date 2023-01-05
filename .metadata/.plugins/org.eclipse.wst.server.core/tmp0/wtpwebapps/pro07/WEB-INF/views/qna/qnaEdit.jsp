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
	<title>민원정책 묻고 답하기</title>
	<jsp:include page="../include/head.jsp" />
	<style>
	.qbox { width: 100%; height: auto; border: 1px solid skyblue; background-color: #e6f4fa; text-align: center; margin-bottom: 20px; margin-top: 20px;}
	.table1 { width: 100%; height: auto; border: 1px solid skyblue;  padding: 30px;}
	.q_title { font-size: 22px; color: #111; font-weight: 500; margin-bottom: 20px; line-height: 24px; display: block;}
	.q_content { line-height: 24px;}
	.q_date { display: block; margin-top: 20px;}
	.button-group { margin-top: 15px; margin-bottom: 15px;}
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
			<form method="post" action="${path1 }/qna/edit.do">
				<div class="qbox">
					<h2>글 수정</h2>
				</div>
		      	<div class="table1">
					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text" id="inputGroup-sizing-default">제목</span>
					  </div>
					  <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="title" id="title" value="${dto.title }">
					  <input type="hidden" name="qno" id="qno" value="${dto.qno }">
					</div>
					
					<div class="input-group">
					  <div class="input-group-prepend">
					    <span class="input-group-text">민원<br>내용</span>
					  </div>
					  <textarea class="form-control" rows="10" aria-label="With textarea" name="content" id="content">${dto.content }</textarea>
					</div>
					
					<span class="q_date">
						작성일 : 
						<fmt:parseDate value="${dto.credate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
						<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
					</span>   	
				</div>
				<div class="button-group">
					<a class="btn btn-outline-secondary" href="${path1 }/qna/list.do">글 목록</a>
					<input type="submit" class="btn btn-outline-secondary" value="글 수정">
				</div>
			</form>
	      </div>
		<div class="fixed-bottom">
			<jsp:include page="../include/footer.jsp" />
		</div>
	</div>
</body>
</html>