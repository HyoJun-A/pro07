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
	<title>미정</title>
	<jsp:include page="include/head.jsp" />
</head>
<body>
	<div class="wrap">
		<!-- content -->
		<div class="container">
			<a href="${path1 }/api/test1">test1</a>
			<a href="${path1 }/api/test2/ahj/1234">test2</a>
			<a href="${path1 }/api/test3/ahj">test3</a>
			<a href="${path1 }/api/test4/ahj/1234">test4</a>
			<a href="${path1 }/api/test5/ahj">test5</a>
		</div>
	</div>
</body>
</html>