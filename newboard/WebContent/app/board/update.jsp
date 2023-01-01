<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- taglib지시자로 라이브러리 선언 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<!--
	Altitude by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>게시글 수정</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		
		<!-- ${pageContext.request.contextPath} - project의 WebContent까지의 경로(상대경로) -->
      	<!-- http://localhost:8085/assets/css/main.css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<style>
			form textarea{
				border-radius:0; 
				resize:none;
				color:black !important;
			}
			
			form div#reply{
				display:flex;
				margin-bottom:3%;
			}
			
			input[type='submit']:not(#register), input[type='button'] {border-radius:0;}
			
			ul.actions li {
			    padding: 0 0 0 0.2em;
			}
			
			input#board_title{
				border-radius: 0;
				border: none;
				text-align: left;
				font-size: 1.75em;
				font-weight: 500;
				line-height: 1.5;
				letter-spacing: 0.1em;
				padding:0;
			}
			
			input[type='file']{
				display:none;
			}
			
			div.files{
				text-align:center;
				margin-right: 3%;
			}
			
			textarea {
				font-size: 1em;
    			font-weight: 600;
    			letter-spacing: 0.1em;
			}
			
		</style>
	</head>
	<body class="is-preload">
		<!-- Page Wrapper -->
			<div id="page-wrapper">
				<!-- Wrapper -->
					<div class="wrapper">
						<div class="inner">
							
							<!-- html코드만을 include하여 header파일 추가 -->
							<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
						</div>
					</div>

				<!-- Wrapper -->
					<div class="wrapper">
						<div class="inner">

							<!-- Main -->
							<section class="main">
							
								<!-- http://localhost:8085/images/boardView.png -->
								<a href="#" class="image main"><img src="${pageContext.request.contextPath}/images/boardView.png" alt="" /></a>
								<div class="col-12">
									<ul class="actions" style="display:flex; justify-content:flex-end;">
									
										<!-- 목록 버튼 클릭 시 게시글 목록 페이지로 이동 -->
										<li><input type="button" value="목록" class="primary" onclick="location.href = '${pageContext.request.contextPath}/board/listOk.bo'"/></li>
									</ul>
								</div>
								
								<!-- 게시글 수정을 위한 post방식의 form태그 설정 -->
								<form action="${pageContext.request.contextPath}/board/updateOk.bo" name="updateForm" method="post" enctype="multipart/form-data">
								
									<!-- 게시글 수정을 위해 boardNumber를 type=hidden으로 설정 -->
									<input type="hidden" name="boardNumber" value="${board.getBoardNumber()}">
									<header class="major">
										<p>
											<!-- 게시글 제목 변경을 위한 태그 -->
											<input name="boardTitle" type="text" placeholder="제목 입력" value="${board.getBoardTitle()}">
										</p>
										
										<!-- 게시글 작성자 표시 -->
										<p style="text-align:left; margin-bottom:1%; margin-top:-1.75em;">작성자 : ${board.getMemberId()}</p>
									</header>
									<hr style="margin-top:0;">
									<div style="margin-bottom:2%;">
										첨부파일
									</div>
									<div style="display:flex;">
										<div class="files">
											<div>
												<label for="board_file1" style="display:inline;">
												
													<!-- http://localhost:8085/images/filePlus.png -->
													<img id="board_file1Img" src="${pageContext.request.contextPath}/images/filePlus.png" width="110px" height="110px" style="display:inline;">
												</label>
											</div>
											
											<!-- file타입을 저장하기 위한 태그 -->
											<input id="board_file1" name="board_file1" type="file">
											
											<!-- onclick이벤트시 파일 삭제를 위한 cancelFile('파일명')함수 실행 -->
											<input type="button" onclick="cancelFile('board_file1')" value="첨부 삭제">
										</div>
										<div class="files">
											<div>
												<label for="board_file2" style="display:inline;">
												
													<!-- http://localhost:8085/images/filePlus.png -->
													<img id="board_file2Img" src="${pageContext.request.contextPath}/images/filePlus.png" width="110px" height="110px" style="display:inline;">
												</label>
											</div>
											
											<!-- file타입을 저장하기 위한 태그 -->
											<input id="board_file2" name="board_file2" type="file">
											
											<!-- onclick이벤트시 파일 삭제를 위한 cancelFile('파일명')함수 실행 -->
											<input type="button" onclick="cancelFile('board_file2')" value="첨부 삭제">
										</div>
										<div class="files">
											<div>
												<label for="board_file3" style="display:inline;">
												
													<!-- http://localhost:8085/images/filePlus.png -->
													<img id="board_file3Img" src="${pageContext.request.contextPath}/images/filePlus.png" width="110px" height="110px" style="display:inline;">
												</label>
											</div>
											
											<!-- file타입을 저장하기 위한 태그 -->
											<input id="board_file3" name="board_file3" type="file">
											
											<!-- onclick이벤트시 파일 삭제를 위한 cancelFile('파일명')함수 실행 -->
											<input type="button" onclick="cancelFile('board_file3')" value="첨부 삭제">
										</div>
									</div>
									<div style="margin-top:3%;">
									
										<!-- 게시글 내용을 작성하기 위한 태그 -->
										<textarea name="boardContent" placeholder="내용 작성" style="resize:none;" rows="30">${board.getBoardContent()}</textarea>
									</div>
									<ul class="actions" style="display:flex; justify-content:center; margin-top:3%;">
									
										<!-- 수정완료 버튼 클릭시 유효성 검사를 위한 send()함수 실행  -->
										<li><input type="button" value="수정완료" class="primary" onclick="send()"/></li>
										
										<!-- 취소 버튼 클릭시 뒤로 가기 기능 설정 -->
										<li><input type="button" value="취소" onclick="history.back()"/></li>
									</ul>
								</form>
							</section>
						</div>
					</div>

				<!-- Wrapper -->
					<div class="wrapper">
						<div class="inner">

							<!-- Footer -->
								<footer id="footer">
									<section class="links">
										<div>
											<h3>Magna</h3>
											<ul class="plain">
												<li><a href="#">Aliquam tempus</a></li>
												<li><a href="#">Ultrecies nul</a></li>
												<li><a href="#">Gravida ultricies</a></li>
												<li><a href="#">Commodo etiam</a></li>
											</ul>
										</div>
										<div>
											<h3>Feugiat</h3>
											<ul class="plain">
												<li><a href="#">Morbi sem lorem</a></li>
												<li><a href="#">Praes sed dapi</a></li>
												<li><a href="#">Sed adipis nullam</a></li>
												<li><a href="#">Fus dolor lacinia</a></li>
											</ul>
										</div>
										<div>
											<h3>Tempus</h3>
											<ul class="plain">
												<li><a href="#">Donecnec etiam</a></li>
												<li><a href="#">Aapibus sedun</a></li>
												<li><a href="#">Namnulla tempus</a></li>
												<li><a href="#">Morbi set amet</a></li>
											</ul>
										</div>
										<div>
											<h3>Aliquam</h3>
											<ul class="plain">
												<li><a href="#">Lorem prasent dia</a></li>
												<li><a href="#">Nellentes ipsum</a></li>
												<li><a href="#">Diamsed arcu dolor</a></li>
												<li><a href="#">Sit amet cursus</a></li>
											</ul>
										</div>
									</section>
									<ul class="contact-icons">
										<li class="icon solid fa-home">1234 Fictional Street #5432 Nashville, TN 00000-0000</li>
										<li class="icon solid fa-phone"><a href="#">(000) 000-0000</a></li>
										<li class="icon solid fa-envelope"><a href="#">info@untitled.tld</a></li>
									</ul>
									<p class="copyright">&copy; Untitled. All rights reserved.</p>
								</footer>

						</div>
					</div>

			</div>

		<!-- Scripts -->
		
			<!-- 홈페이지의 기능을 위한 설정 -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	</body>
    <script>
    
    	/* 게시글 작성 유효성 검사를 위한 함수 */
    	function send(){
			let form = document.updateForm;
			
			/* 게시글 제목이 없다면 */
			if(!form.boardTitle.value){
				form.boardTitle.focus();
				return;
			}
			
			/* 게시글 내용이 없다면 */
			if(!form.boardContent.value){
				form.boardTitle.focus();
				return;
			}
			
			/* 게시글 입력 내용을 form태그의 action 속성에 설정된 경로로 이동 */
			form.submit();
    	}
    
    	/* 파일 변경시 수행되는 함수 */
	   	$(".files").change(function(e){
	   		
	   		/* 파일 내용을 읽기 위한 설정*/
	   		var file = e.target.files[0];
	   		var img = $(this).find("img");
	   		var reader = new FileReader();
	   		reader.readAsDataURL(file);
	   		
	   		reader.onload = function(e){
	   			
	   			/* 이미지가 있다면 */
	   			if(e.target.result.indexOf("image") != -1){
		   			img.attr("src", e.target.result)
		   			
		   		/* 이미지가 없을 경우 */
	   			}else{
	   				img.attr("src", "${pageContext.request.contextPath}/images/no_img.jpg");
	   			}
	   		}
	   	});
	   	
	   	/* 파일삭제를 위한 함수 */
	   	function cancelFile(fileName){
	   		
	   		/* 표시된 파일 이름 값을 제거 */
	   		$("input#" + fileName).val("");
	   		
	   		/* 이미지를 등록하기 이전의 이미지 표시 */
	   		$("img#" + fileName + "Img").attr("src", "${pageContext.request.contextPath}/images/filePlus.png");
	   	}
   </script>
</html>