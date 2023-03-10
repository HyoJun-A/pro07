<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container px-5">
        <a class="navbar-brand" href="${path1 }/">
            <img src="${path1 }/resources/img/logo1.png" alt="">
            <img src="${path1 }/resources/img/logo2.png" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">통일소식</a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="#">통일부 소식</a></li>
                      <li><a class="dropdown-item" href="${path1 }/board/list.do">공지사항</a></li>
                      <li><a class="dropdown-item" href="${path1 }/card/addForm.do">카드뉴스</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">통일정책</a>
                    <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">통일방안</a></li>
                    <li><a class="dropdown-item" href="#">통일부국정과제</a></li>
                    <li><a class="dropdown-item" href="#">연도별업무보고</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">주요사업</a>
                    <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">남북교류협력</a></li>
                    <li><a class="dropdown-item" href="#">북한이탈주민정책</a></li>
                    <li><a class="dropdown-item" href="#">남북협력기금</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">정보공개</a>
                    <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">정보공개제도</a></li>
                    <li><a class="dropdown-item" href="#">정책실명제</a></li>
                    <li><a class="dropdown-item" href="#">공공데이터개방</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">민원참여</a>
                    <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">민원안내</a></li>
                    <li><a class="dropdown-item" href="#">민원신청</a></li>
                    <c:if test="${not empty sid }">
                 		<li><a class="dropdown-item" href="#">나의민원</a></li>
                    </c:if>
                    <li><a class="dropdown-item" href="${path1 }/qna/list.do">민원정책 묻고답하기</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">통일부소개</a>
                    <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">통일부는?</a></li>
                    <li><a class="dropdown-item" href="#">통일부상징</a></li>
                    <li><a class="dropdown-item" href="#">찾아오시는길</a></li>
                    </ul>
                </li>
            </ul>
            <div class="button-group">
            <c:if test="${empty sid }">
	            <a type="button" href="${path1 }/user/loginForm.do" class="btn btn-outline-secondary">로그인</a>
	            <a type="button" href="${path1 }/user/agree.do" class="btn btn-outline-secondary">회원가입</a>
	        </c:if>
	        <c:if test="${not empty sid }">
	        	<a type="button" href="${path1 }/user/list.do" class="btn btn-outline-secondary">${sname }님</a>
	            <a type="button" href="${path1 }/user/logout.do" class="btn btn-outline-secondary">로그아웃</a>
	        </c:if>
	        <c:if test="${sid eq 'admin' }">
	            <a type="button" href="${path1 }/admin/mgmtForm.do" class="btn btn-outline-secondary">홈페이지 관리</a>
	        </c:if>
	        </div>
          </div>
    </div>
</nav>