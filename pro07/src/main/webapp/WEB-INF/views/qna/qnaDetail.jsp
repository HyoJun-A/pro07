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
		<c:forEach items="${list }" var="dto">
			<c:if test="${dto.lev eq '0' }">
				<div class="qbox">
					<h2>사례</h2>
				</div>
				<div class="table1">
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
				<c:if test="${sid eq dto.author }">
					<a class="btn btn-outline-secondary" href="${path1 }/qna/del.do?qno=${dto.qno}">글 삭제</a>
					<a class="btn btn-outline-secondary" href="${path1 }/qna/editForm.do?qno=${dto.qno}">글 수정</a>
				</c:if>
				<c:if test="${not empty sid and sid != dto.author }">
					<a class="btn btn-outline-secondary" href="${path1 }/qna/addForm.do?lev=1&&pos=${dto.pos}">답변 작성</a>
				</c:if>
				</div>
			</c:if>
			<c:if test="${dto.lev eq '1' }">
				<div class="qbox">
					<h2>답변</h2>
				</div>
				<div class="table1">
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
					<br><hr>
					<div class="q_content">
						<strong>담당부서</strong> : 통일부 교류협력실 교류지원과<br>
						<strong>관련법령</strong> : 남북교류협력에 관한 법률 / 제9조(남북한 방문)
					</div>
				</div>
				<div class="button-group">
					<a class="btn btn-outline-secondary" href="${path1 }/qna/list.do">글 목록</a>
					<c:if test="${sid eq dto.author }">
						<a class="btn btn-outline-secondary" href="${path1 }/qna/del.do?qno=${dto.qno}">글 삭제</a>
						<a class="btn btn-outline-secondary" href="${path1 }/qna/editForm.do?qno=${dto.qno}">글 수정</a>
					</c:if>
				</div>
			</c:if>
		 </c:forEach>
	</div>
		<c:choose>
			<c:when test="${list[1].lev eq '1'}">
				<div>
					<jsp:include page="../include/footer.jsp" />
				</div>
			</c:when>
			<c:otherwise>
				<div  class="fixed-bottom">
					<jsp:include page="../include/footer.jsp" />
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>