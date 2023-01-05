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
	<script>
		$(document).ready(function () {
		    $('#example').DataTable();
		});
	</script>
</head>
<body>
	<div class="wrap">
		<jsp:include page="../include/header.jsp" />
		<!-- content -->
		<div class="container content">
			<div class="tc">
				<p class="rt"><a href="${path1 }">Home</a>/민원참여/민원정책 묻고 답하기</p>
				<h2>민원정책 묻고 답하기</h2>
			</div>
			<table id="example" class="table table-striped" style="width:100%">
		        <thead>
		            <tr>
		                <th>번호</th>
		                <th>제목</th>
		                <th>작성일</th>
		                <th>조회수</th>
		            </tr>
		        </thead>
		        <tbody>
		        <c:forEach items="${list }" var="dto" varStatus="status">
		            <tr>
		                <td>${status.count }</td>
		                <td><a href="${path1 }/qna/detail.do?pos=${dto.pos}">${dto.title }</a></td>
		                <td>
							<fmt:parseDate value="${dto.credate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
				      		<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
						</td>
		                <td>${dto.visited }</td>
		            </tr>
		        </c:forEach>
		        </tbody>
		    </table>
		    <c:if test="${not empty sid }">
		    	<a class="btn btn-outline-success" href="${path1 }/qna/addForm.do?lev=0">글 작성</a>
		    </c:if>
		</div>
		<div class="fixed-bottom">
			<jsp:include page="../include/footer.jsp" />
		</div>
	</div>
</body>
</html>