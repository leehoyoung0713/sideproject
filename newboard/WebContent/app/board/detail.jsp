<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <title>게시글 상세보기</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
      <style>
         form div.content textarea{
            border-radius:0;
            resize:none;
            color:black !important;
            width: 95.5%;
         }
         
         form div.reply{
            display:flex;
            margin-bottom:3%;
         }
         
         input[type='submit']:not(#register), input[type='button'] {border-radius:0;}
         
         ul.actions li {
             padding: 0 0 0 0.2em;
         }
         
         div.info {
         	width: 18%;
         	position: relative;
         }
         
         div.info::after {
       	    content: "";
		    display: block;
		    width: 1px;
		    height: 90px;
		    background-color: #d8daee66;
		    position: absolute;
		    right: 25px;
		    top: 0;
         }
         
         p.content{
            width:63%;
         }
         
         p.writer{
            width:20%;
            font-weight:bold;
            margin-bottom: 0;
         }
         
         div.modify-button{
         	background-image: url("../../images/modify.png");
         	background-size: 100%;
         	background-position: center;
         	width: 25px;
         	height: 25px;
         	margin-top: 2px;
         	cursor: pointer;
         }
         div.modify-ready-button{
         	background-image: url("../../images/modify-check.png");
         	background-size: 100%;
         	background-position: center;
         	width: 25px;
         	height: 25px;
         	margin-top: 2px;
         	cursor: pointer;
         }
         div.delete-button {
         	background-image: url("../../images/delete.png");
         	background-size: 100%;
         	background-position: center;
         	width: 30px;
         	height: 30px;
         	cursor: pointer;
         }
         
         div.cancel-button {
         	background-image: url("../../images/cancel.png");
         	background-size: 100%;
         	background-position: center;
         	width: 20px;
         	height: 20px;
         	margin: 4px 5px 0 6px;
         	cursor: pointer;
         }
         
         div.button-wrap {
         	display: flex;
         }
         
         div.content {
         	position: relative;
         }
         
         @keyframes rotate {
         	100% {
         		transform: rotate(360deg);
         	}
         }
         
         div.dimmed {
         	position: absolute;
         	background-image: url("../../images/dimmed.png");
         	background-size: 100%;
         	background-position: center;
         	width: 104px;
         	height: 143px;
         	animation: rotate 1s linear infinite;
         	transform-origin: 50% 50%;
        	left: 40%;
    		top: -35px;
         }
      </style>
   </head>
   <body class="is-preload">
      <!-- Page Wrapper -->
         <div id="page-wrapper">

            <!-- Wrapper -->
               <div class="wrapper">
                  <div class="inner">
                     <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
                  </div>
               </div>

            <!-- Wrapper -->
               <div class="wrapper">
                  <div class="inner">

                     <!-- Main -->
                     <section class="main">
                        <a href="#" class="image main"><img src="${pageContext.request.contextPath}/images/boardView.png" alt="" /></a>
                        <div class="col-12">
                           <ul class="actions" style="display:flex; justify-content:flex-end;">
                              <li><input type="button" value="글쓰기" class="primary" onclick="location.href= '${pageContext.request.contextPath}/board/write.bo'"/></li>
                              <li><input type="button" value="목록" class="primary" onclick="location.href= '${pageContext.request.contextPath}/board/listOk.bo'"/></li>
                              <c:if test="${memberNumber eq board.getMemberNumber()}">
	                              <li><input type="button" value="수정" onclick="location.href = '${pageContext.request.contextPath}/board/update.bo?boardNumber=${board.getBoardNumber()}'"/></li>
	                              <li><input type="button" value="삭제" onclick="location.href = '${pageContext.request.contextPath}/board/deleteOk.bo?boardNumber=${board.getBoardNumber()}'"/></li>
	                          </c:if>
                           </ul>
                        </div>
                        <header class="major">
                        
                           <h2 style="text-align:left;">${board.getBoardTitle()}</h2>
                           <p style="text-align:left; margin-bottom:1%">작성자 : ${board.getMemberId()}</p>
                        </header>
                        <hr style="margin-top:0;">
                           <div>
                              첨부파일
                           </div>
                        <!-- 첨부파일 목록 -->
                        <c:choose>
                        	<c:when test="${files != null and fn:length(files) > 0}">
                        		<c:forEach var="file" items="${files}">
                        			<a href="${pageContext.request.contextPath}/file/download.file?fileSystemName=${file.getFileSystemName()}&fileOriginalName=${file.getFileOriginalName()}">
                        				<c:out value="${file.getFileOriginalName()}"/>
                        			</a>
                        			<br>
                        		</c:forEach>
                        	</c:when>
                        	<c:otherwise>
		                   		첨부파일이 없습니다.
		                        <hr>
                        	</c:otherwise>
                        </c:choose>
                        <!-- 내용 -->
                        <br>
                        <h3><pre>${board.getBoardContent()}</pre></h3>
                     </section>
                     <section class="main accent2" style="padding:3%">
                        <header class="major" style="text-align:left;">
                           <h2>댓글</h2>
                           <p>여러분의 소중한 댓글을 작성해주세요.</p>
                        </header>
                        <form method="post" action="#" class="combined" style="width:auto;" name="replyForm">
                           <textarea name="replyContent" placeholder="비속어를 사용하지 말아주세요." class="invert" rows="5" style="border-radius:0; resize:none;"></textarea>
                           <input id="register" type="button" class="primary" value="등록" onclick="send()"/>
                        </form>
                        <form action="#" id="replies" class="combined" style="flex-direction:column; margin:0; display:contents;">
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
      	 <script>
      	 	let boardNumber = "${board.getBoardNumber()}";
      	 	let memberNumber = "${sessionScope.memberNumber}";
      	 	let memberId = "${sessionScope.memberId}";
      	 </script>
         <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/reply.js"></script>
   </body>
</html>