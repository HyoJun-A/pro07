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
	<title>카드뉴스</title>
	
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
				<p class="rt"><a href="${path1 }">Home</a>/통일소식/카드뉴스</p>
				<h2>카드뉴스</h2>
			</div>
			
				<div class="qbox">
					<h2>글 등록</h2>
				</div>
		      	<div class="table1">
		      	<form class="col s12 l6 offset-l3" action="${path1 }/card/upload.do" method="post" enctype="multipart/form-data">
                    <div class="row" id="fileContainer">
                        <div class="input-group mb-3">
                            <div class="form-label">
                                <input type="file" name="files" class="form-control">
                            </div>
                            <div class="file-path-wrapper">
                                <input  type="hidden" class="file-path validate">
                            </div>
                            <div class="input-group-prepend">
	                            <button type="submit" class="btn btn-outline-secondary">
	                                   	 파일 업로드
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
		      	<form method="post" action="${path1 }/qna/add.do">
			      	<div class="input-group mb-3">
						  <div class="input-group-prepend">
						    <span class="input-group-text" id="inputGroup-sizing-default">저자</span>
						  </div>
						  <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="author" id="author" value="${sid}">
						  <c:if test="${filename != null }">
						  	<input type="hidden" name="file" id="file" value="${filename }">
						  	<input type="hidden" name="path" id="path" value="${realPath }">
						  	<img alt="d" src="${realPath }${filename }">
						  </c:if>
					</div>
					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text" id="inputGroup-sizing-default">제목</span>
					  </div>
					  <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="title" id="title" value="${dto.title }">
					  <input type="hidden" name="lev" id="lev"  value="${lev }">
					  <c:if test="${lev eq '1'}">
					  	<input type="hidden" name="pos" id="pos"  value="${pos }">
					  </c:if>
					</div>
					<div class="button-group">
					<a class="btn btn-outline-secondary" href="${path1 }/qna/list.do">글 목록</a>
					<input type="submit" class="btn btn-outline-secondary" value="글 등록">
				</div>
					</form>
				</div>
				
			
			
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	    <script>
	        const sideNav = document.querySelector('.sidenav');
	        M.Sidenav.init(sideNav, {});
	    </script>
	    <script>
	    	var fileContainer = document.querySelector('#fileContainer');
	    	
	    	var btnAddFile = document.querySelector('#btnAddFile');
	    	
	    	var fileCount = 1; // 첨부파일 선택상자 개수
	    	
	    	btnAddFile.addEventListener('click', function () {
	    		if (fileCount >= 5) {
	    			alert('첨부파일은 최대 5개까지만 업로드 가능합니다.')
	    			return;
	    		}
	    		fileCount++; // 추가된 첨부파일 선택상자 개수 반영
	    		
	    		var input = '<div class="file-field input-field col s12"><div class="btn"><span><i class="material-icons left">attach_file</i>첨부 파일</span><input type="file" name="files" multiple></div><div class="file-path-wrapper"><input type="text" class="file-path validate"></div><span class="helper-text">첨부파일로 업로드 가능한 용량은 최대 50MB 입니다.</span></div>';
	    		
	    		fileContainer.innerHTML += input;
	    	});
	    </script>
	    <script>
	    $(document).ready(function(){
			$("#upBtn").click(function(){
				let formData = new FormData();
			    formData.append('file', $('#file')[0].files);
			    $.ajax({
			        type : "POST",
			        enctype : "multipart/form-data",
			        url : "fileUpload3",
			        cache : false,
			        contentType : false,
			        processData : false,
			        data : formData,
			        success : function(data){
			        	console.log(data);
			        },
			        error : function(){
			        	alert('에러');
			        }
			    });
			});
		});
	    </script>
		</div>
		<div class="fixed-bottom">
			<jsp:include page="../include/footer.jsp" />
		</div>
	</div>
</body>
</html>