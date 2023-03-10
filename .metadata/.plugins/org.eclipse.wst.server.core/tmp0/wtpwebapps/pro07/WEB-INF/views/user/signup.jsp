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
      .content { margin-top: 10%; height: 60.3vh;}
      .wrap { 
		width: 1200px;
		margin: 0 auto;	
		margin-top: 5%;	
		margin-bottom: 5%;	
	}
    </style>
</head>
<body class="text-center">
	
		<jsp:include page="../include/header.jsp" />
		<!-- content -->
		<div class="wrap">
		  <h2>회원 가입</h2>
            <form action="${path1 }/user/signUp.do" method="post" id="frm1" name="frm1" class="frm1">
                <table class="table">
                    <tbody>
                        <tr>
                            <th>아이디</th>
                            <td>
                                <input type="text" id="id" name="id" value="" class="form-control" placeholder="아이디 입력" autofocus
                                    required>
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호</th>
                            <td>
                                <input type="password" id="pw" name="pw" class="form-control" placeholder="비밀번호 입력" required><br>
                                <input type="password" id="pw2" name="pw2" class="form-control" placeholder="비밀번호 확인" required>
                            </td>
                        </tr>
                        <tr>
                            <th>이름</th>
                            <td><input type="text" id="name" name="name" class="form-control" placeholder="이름입력" required></td>
                        </tr>
                        <tr>
                            <th>전화번호</th>
                            <td><input type="text" id="tel" name="tel" class="form-control" placeholder="전화번호 입력" required></td>
                        </tr>
                        <tr>
                            <th>이메일</th>
                            <td><input type="text" id="email" name="email" class="form-control" placeholder="이름 입력" required></td>
                        </tr>
                        <tr>
                            <th>주소</th>
                            <td><input type="text" name="addr1" id="addr1" placeholder="기본 주소 입력"
                                    class="form-control" required /><br>
                                <input type="text" name="addr2" id="addr2" placeholder="상세 주소 입력"
                                    class="form-control" required /><br>
                                <input type="text" name="postcode" id="postcode"
                                    style="width:160px;float:left;margin-right:20px;" placeholder="우편번호"
                                    class="form-control">
                                <button id="post_btn" onclick="findAddr()" class="btn btn-primary">우편번호 검색</button>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="가입" class="btn btn-primary"></td>
                            <td><input type="reset" value="취소" class="btn btn-primary"></td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <script>
				function findAddr() {
					new daum.Postcode({
						oncomplete: function(data) {
							console.log(data);
							var roadAddr = data.roadAddress;
							var jibunAddr = data.jibunAddress;
							document.getElementById("postcode").value = data.zonecode;
							if(roadAddr !== '') {
								document.getElementById("addr1").value = roadAddr;				
							} else if(jibunAddr !== ''){
								document.getElementById("addr1").value = jibunAddr;
							}
							document.getElementById("addr2").focus();
						}
					}).open();
				}
				</script>
				<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		</div>
		<jsp:include page="../include/footer.jsp" />
		
</body>
</html>